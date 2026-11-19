import 'dart:convert';
import 'dart:io';

import 'package:ekklo_client/ekklo_client.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

typedef Route = http.Response Function(http.Request request);

final now = DateTime.utc(2026, 10, 1, 12);

String jwt({required DateTime expiresAt, String subject = 'fake-user'}) {
  String part(Object json) =>
      base64Url.encode(utf8.encode(jsonEncode(json))).replaceAll('=', '');
  return [
    part({'alg': 'HS256', 'typ': 'JWT'}),
    part({'sub': subject, 'exp': expiresAt.millisecondsSinceEpoch ~/ 1000}),
    'signature',
  ].join('.');
}

EkkloTokens validTokens({String subject = 'first'}) => EkkloTokens(
  accessToken: jwt(
    expiresAt: now.add(const Duration(hours: 1)),
    subject: subject,
  ),
  refreshToken: 'refresh-$subject',
);

http.Response json(Object? body, {int status = 200}) => http.Response(
  jsonEncode(body),
  status,
  headers: {'content-type': 'application/json; charset=utf-8'},
);

String fixture(String name) => File('test/fixtures/$name').readAsStringSync();

http.Response jsonFixture(String name, {int status = 200}) => http.Response(
  fixture(name),
  status,
  headers: {'content-type': 'application/json; charset=utf-8'},
);

final class FakeEkklo {
  FakeEkklo(this.routes, {this.webSocketConnector});

  final Map<String, Route> routes;
  final EkkloWebSocketConnector? webSocketConnector;
  final requests = <http.Request>[];
  final tokenStore = InMemoryEkkloTokenStore();

  late final client = EkkloClient(
    httpClient: MockClient((request) async {
      requests.add(request);
      final route = routes['${request.method} ${request.url.path}'];
      if (route == null) {
        throw StateError('Unexpected ${request.method} ${request.url}');
      }
      return route(request);
    }),
    tokenStore: tokenStore,
    clock: () => now,
    webSocketConnector: webSocketConnector,
  );

  Iterable<http.Request> to(String method, String path) => requests.where(
    (r) => r.method == method && r.url.path == path,
  );

  Map<String, dynamic> bodyOf(http.Request request) =>
      jsonDecode(request.body) as Map<String, dynamic>;
}
