import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/auth/token_store.dart';
import 'package:ekklo_client/src/auth/tokens.dart';
import 'package:ekklo_client/src/decoding.dart';
import 'package:ekklo_client/src/exceptions/auth_failure.dart';
import 'package:ekklo_client/src/exceptions/ekklo_exception.dart';
import 'package:ekklo_client/src/http_method.dart';
import 'package:ekklo_client/src/requests/error_response.dart';
import 'package:ekklo_client/src/requests/login_query.dart';
import 'package:ekklo_client/src/requests/login_request.dart';
import 'package:ekklo_client/src/requests/refresh_request.dart';
import 'package:ekklo_client/src/requests/token_response.dart';
import 'package:ekklo_client/src/socket/web_socket_connector.dart';
import 'package:http/http.dart' as http;
import 'package:web_socket/web_socket.dart';

final class EkkloTransport {
  EkkloTransport({
    required this._httpClient,
    required this._tokenStore,
    required this._baseUri,
    required this._userAgent,
    required this._clock,
    required this._webSocketConnector,
  });

  static const _loginPath = '/api/v1/auth/login';
  static const _refreshPath = '/api/v1/auth/login/refresh_token';
  static const _refreshMargin = Duration(minutes: 1);

  final http.Client _httpClient;
  final EkkloTokenStore _tokenStore;
  final Uri _baseUri;
  final String _userAgent;
  final DateTime Function() _clock;
  final EkkloWebSocketConnector _webSocketConnector;
  Future<EkkloTokens>? _refreshing;
  bool _sessionExpired = false;

  Future<void> clearSession() async {
    _sessionExpired = false;
    await _tokenStore.clear();
  }

  Future<void> login({required String email, required String password}) async {
    final exchange = await _send(
      HttpMethod.post,
      _loginPath,
      query: const LoginQuery().toMap(),
      body: LoginRequest(email: email, password: password).toMap(),
    );
    switch (exchange.response.statusCode) {
      case 401 || 403:
        throw EkkloAuthException(
          EkkloAuthFailure.invalidCredentials,
          _errorMessages(exchange),
        );
    }
    await _tokenStore.write(
      _decodeJson(exchange, mapped(EkkloTokensMapper.fromMap)),
    );
    _sessionExpired = false;
  }

  Future<T> request<T>(
    HttpMethod method,
    String path,
    T Function(Object? json) decode, {
    Map<String, dynamic>? query,
    Object? body,
    Duration? timeout,
  }) async {
    final tokens = await _freshTokens();
    final exchange = await _send(
      method,
      path,
      query: query,
      body: body,
      accessToken: tokens.accessToken,
      timeout: timeout,
    );
    final accepted = switch (exchange.response.statusCode) {
      401 => await _retryWithRefreshedSession(
        tokens,
        method,
        path,
        query: query,
        body: body,
        timeout: timeout,
      ),
      _ => exchange,
    };
    return _decodeJson(accepted, decode);
  }

  Future<WebSocket> connectWebSocket(String path) async {
    final tokens = await _freshTokens();
    final uri = _baseUri.replace(
      scheme: switch (_baseUri.scheme) {
        'http' => 'ws',
        _ => 'wss',
      },
      path: path,
    );
    try {
      return await _webSocketConnector(uri, {
        'authorization': 'Bearer ${tokens.accessToken}',
        'user-agent': _userAgent,
      });
    } on IOException catch (error) {
      throw _socketFailure(uri, '$error');
    } on WebSocketException catch (error) {
      throw _socketFailure(uri, error.message);
    } on OSError catch (error) {
      throw _socketFailure(uri, error.message);
    }
  }

  static EkkloNetworkException _socketFailure(Uri uri, String reason) =>
      EkkloNetworkException(
        method: HttpMethod.get.verb,
        uri: uri,
        errors: [reason],
      );

  Future<_Exchange> _retryWithRefreshedSession(
    EkkloTokens rejected,
    HttpMethod method,
    String path, {
    Map<String, dynamic>? query,
    Object? body,
    Duration? timeout,
  }) async {
    final tokens = await _refresh(rejected);
    final exchange = await _send(
      method,
      path,
      query: query,
      body: body,
      accessToken: tokens.accessToken,
      timeout: timeout,
    );
    switch (exchange.response.statusCode) {
      case 401:
        await _expire();
        throw EkkloAuthException(
          EkkloAuthFailure.sessionExpired,
          _errorMessages(exchange),
        );
    }
    return exchange;
  }

  Future<EkkloTokens> _freshTokens() async {
    final tokens = await _tokenStore.read();
    if (tokens == null) {
      throw EkkloAuthException(switch (_sessionExpired) {
        true => EkkloAuthFailure.sessionExpired,
        false => EkkloAuthFailure.notSignedIn,
      });
    }
    _sessionExpired = false;
    final expiresAt = tokens.accessTokenExpiresAt;
    final expiring =
        expiresAt != null && !_clock().add(_refreshMargin).isBefore(expiresAt);
    return expiring ? _refresh(tokens) : tokens;
  }

  Future<EkkloTokens> _refresh(EkkloTokens stale) =>
      _refreshing ??= _doRefresh(stale).whenComplete(() => _refreshing = null);

  Future<EkkloTokens> _doRefresh(EkkloTokens stale) async {
    final stored = await _tokenStore.read();
    if (stored != null && stored.accessToken != stale.accessToken) {
      return stored;
    }
    final exchange = await _send(
      HttpMethod.post,
      _refreshPath,
      body: RefreshRequest(refreshToken: stale.refreshToken).toMap(),
    );
    switch (exchange.response.statusCode) {
      case 400 || 401 || 403:
        await _expire();
        throw EkkloAuthException(
          EkkloAuthFailure.sessionExpired,
          _errorMessages(exchange),
        );
    }
    final refreshed = _decodeJson(
      exchange,
      mapped(TokenResponseMapper.fromMap),
    );
    final tokens = EkkloTokens(
      accessToken: refreshed.accessToken,
      refreshToken: refreshed.refreshToken ?? stale.refreshToken,
    );
    await _tokenStore.write(tokens);
    _sessionExpired = false;
    return tokens;
  }

  Future<void> _expire() async {
    _sessionExpired = true;
    await _tokenStore.clear();
  }

  Future<_Exchange> _send(
    HttpMethod method,
    String path, {
    Map<String, dynamic>? query,
    Object? body,
    String? accessToken,
    Duration? timeout,
  }) async {
    final abort = Completer<void>();
    final request =
        http.AbortableRequest(
            method.verb,
            _baseUri.replace(
              path: path,
              queryParameters: query?.map(
                (key, value) => MapEntry(key, '$value'),
              ),
            ),
            abortTrigger: abort.future,
          )
          ..headers.addAll({
            'accept': 'application/json',
            'user-agent': _userAgent,
            if (accessToken != null) 'authorization': 'Bearer $accessToken',
          });
    if (body != null) {
      request
        ..headers['content-type'] = 'application/json'
        ..body = jsonEncode(body);
    }
    final response = _httpClient.send(request).then(http.Response.fromStream);
    try {
      return (
        request: request,
        response: await switch (timeout) {
          null => response,
          final limit => response.timeout(
            limit,
            onTimeout: () {
              abort.complete();
              throw EkkloNetworkException(
                method: request.method,
                uri: request.url,
                errors: ['No answer within ${limit.inSeconds} s'],
              );
            },
          ),
        },
      );
    } on http.ClientException catch (error) {
      throw EkkloNetworkException(
        method: request.method,
        uri: request.url,
        errors: [error.message],
      );
    }
  }

  T _decodeJson<T>(_Exchange exchange, T Function(Object? json) decode) {
    final (:request, :response) = exchange;
    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw EkkloApiException(
        method: request.method,
        uri: request.url,
        statusCode: response.statusCode,
        errors: _errorMessages(exchange),
      );
    }
    try {
      return decode(response.body.isEmpty ? null : jsonDecode(response.body));
    } on FormatException catch (error) {
      throw _unexpected(exchange, error.message);
    } on MapperException catch (error) {
      throw _unexpected(exchange, error.message);
    }
  }

  static EkkloUnexpectedResponseException _unexpected(
    _Exchange exchange,
    String reason,
  ) => EkkloUnexpectedResponseException(
    method: exchange.request.method,
    uri: exchange.request.url,
    statusCode: exchange.response.statusCode,
    errors: [reason],
  );

  List<String> _errorMessages(_Exchange exchange) {
    final body = exchange.response.body;
    final raw = body.isEmpty ? const <String>[] : [body];
    try {
      return switch (jsonDecode(body)) {
        final Map<String, dynamic> json => ErrorResponseMapper.fromMap(
          json,
        ).messages,
        _ => raw,
      };
    } on FormatException {
      return raw;
    }
  }
}

typedef _Exchange = ({http.Request request, http.Response response});
