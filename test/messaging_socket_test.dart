import 'dart:convert';
import 'dart:io';

import 'package:checks/checks.dart';
import 'package:ekklo_client/ekklo_client.dart';
import 'package:http/testing.dart';
import 'package:test/test.dart';
import 'package:web_socket/testing.dart';
import 'package:web_socket/web_socket.dart';

import 'support/fake_ekklo.dart';

const _refresh = 'POST /api/v1/auth/login/refresh_token';

final class _Server {
  _Server();

  final connections = <({Uri uri, Map<String, String> headers})>[];
  late WebSocket peer;

  Future<WebSocket> connect(Uri uri, Map<String, String> headers) async {
    connections.add((uri: uri, headers: headers));
    final (client, server) = fakes();
    peer = server;
    return client;
  }

  void push(String event, Map<String, dynamic> data) =>
      peer.sendText(jsonEncode({'event': event, 'data': data}));
}

Map<String, dynamic> _message(String id) => {
  'id': id,
  'sender_id': 'coach-1',
  'content': 'Salut',
  'message_type': 'text',
  'internal': false,
  'created_at': '2026-09-01T08:00:00Z',
  'conversation_id': 'conv-1',
  'is_read': true,
};

Map<String, dynamic> _reaction({required bool mineNow}) => {
  'conversation_id': 'conv-1',
  'message_id': 'msg-1',
  'user_id': 'coach-1',
  'emoji': '🔥',
  'new_count': 2,
  'mine_now': mineNow,
};

Future<(FakeEkklo, _Server, EkkloMessagingSocket)> _connected() async {
  final server = _Server();
  final fake = FakeEkklo({}, webSocketConnector: server.connect);
  await fake.tokenStore.write(validTokens());
  return (fake, server, await fake.client.messaging.connectSocket());
}

void main() {
  test('connects to the messaging socket of the API host with the access '
      'token in a header', () async {
    final tokens = validTokens();
    final (_, server, _) = await _connected();

    final connection = server.connections.single;
    check(
      '${connection.uri}',
    ).equals('wss://api.prod.ekklo.com/api/v1/messaging/ws');
    check(
      connection.headers,
    )['authorization'].equals('Bearer ${tokens.accessToken}');
  });

  test('a plain HTTP base URI gives a plain socket on the same host', () async {
    final server = _Server();
    final tokenStore = InMemoryEkkloTokenStore();
    await tokenStore.write(validTokens());
    final client = EkkloClient(
      baseUri: Uri.parse('http://127.0.0.1:8123'),
      httpClient: MockClient((request) => throw StateError('$request')),
      tokenStore: tokenStore,
      clock: () => now,
      webSocketConnector: server.connect,
    );

    await client.messaging.connectSocket();

    check(
      '${server.connections.single.uri}',
    ).equals('ws://127.0.0.1:8123/api/v1/messaging/ws');
  });

  test('the default connector sends the token header over dart:io', () async {
    final tokens = validTokens();
    final httpServer = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    addTearDown(httpServer.close);
    final upgrades = httpServer.asyncMap((request) async {
      final authorization = request.headers.value('authorization');
      final socket = await WebSocketTransformer.upgrade(request);
      await socket.close(4000, 'done');
      return authorization;
    }).first;
    final tokenStore = InMemoryEkkloTokenStore();
    await tokenStore.write(tokens);
    final client = EkkloClient(
      baseUri: Uri.parse('http://127.0.0.1:${httpServer.port}'),
      httpClient: MockClient((request) => throw StateError('$request')),
      tokenStore: tokenStore,
      clock: () => now,
    );

    final socket = await client.messaging.connectSocket();

    check(await upgrades).equals('Bearer ${tokens.accessToken}');
    check((await socket.closed).code).equals(4000);
  });

  test('a token about to expire is refreshed before connecting', () async {
    final refreshed = validTokens(subject: 'second');
    final server = _Server();
    final fake = FakeEkklo({
      _refresh: (_) => json({
        'access_token': refreshed.accessToken,
        'refresh_token': refreshed.refreshToken,
      }),
    }, webSocketConnector: server.connect);
    await fake.tokenStore.write(
      EkkloTokens(
        accessToken: jwt(expiresAt: now.add(const Duration(seconds: 30))),
        refreshToken: 'refresh-first',
      ),
    );

    await fake.client.messaging.connectSocket();

    check(fake.to('POST', '/api/v1/auth/login/refresh_token')).length.equals(1);
    check(
      server.connections.single.headers,
    )['authorization'].equals('Bearer ${refreshed.accessToken}');
  });

  test('a socket that cannot connect is a network error', () async {
    final fake = FakeEkklo(
      {},
      webSocketConnector: (uri, headers) =>
          throw const SocketException('Connection refused'),
    );
    await fake.tokenStore.write(validTokens());

    await check(
      fake.client.messaging.connectSocket(),
    ).throws<EkkloNetworkException>(
      (e) => e.has((e) => e.uri.path, 'path').equals('/api/v1/messaging/ws'),
    );
  });

  test('a connection reset while connecting is a network error', () async {
    final fake = FakeEkklo(
      {},
      webSocketConnector: (uri, headers) =>
          throw const OSError('Connection reset by peer', 54),
    );
    await fake.tokenStore.write(validTokens());

    await check(
      fake.client.messaging.connectSocket(),
    ).throws<EkkloNetworkException>();
  });

  test('focusing a conversation sends its id', () async {
    final (_, server, socket) = await _connected();
    final frames = server.peer.events.take(1).toList();

    socket.focusConversation('conv-1');

    final [TextDataReceived(:text)] = (await frames).cast<TextDataReceived>();
    check(jsonDecode(text)).isA<Map<String, dynamic>>().deepEquals({
      'event': 'focus_conversation',
      'data': {'conversation_id': 'conv-1'},
    });
  });

  test('server events are decoded and unknown or broken frames '
      'ignored', () async {
    final (_, server, socket) = await _connected();
    final events = socket.events.take(6).toList();

    server
      ..push('typing', {'conversation_id': 'conv-1'})
      ..push('new_message', _message('msg-1'))
      ..push('message_edited', {..._message('msg-1'), 'content': 'Salut !'})
      ..push('message_deleted', {
        'conversation_id': 'conv-1',
        'message_id': 'msg-0',
      })
      ..push('message_read', {
        'conversation_id': 'conv-1',
        'user_id': 'coach-1',
        'message_id': 'msg-1',
      })
      ..push('new_message', {'id': 'missing everything'});
    server.peer.sendText('not json');
    server
      ..push('reaction_added', _reaction(mineNow: true))
      ..push('reaction_removed', _reaction(mineNow: false));

    final [created, edited, deleted, read, added, removed] = await events;
    check(created).isA<EkkloNewMessage>().has((e) => e.message, 'message')
      ..has((m) => m.id, 'id').equals('msg-1')
      ..has((m) => m.receivedJson, 'json').deepEquals(_message('msg-1'));
    check(edited)
        .isA<EkkloMessageEdited>()
        .has((e) => e.message.content, 'content')
        .equals('Salut !');
    check(deleted).equals(
      const EkkloMessageDeleted(conversationId: 'conv-1', messageId: 'msg-0'),
    );
    check(read).equals(
      const EkkloMessageRead(
        conversationId: 'conv-1',
        messageId: 'msg-1',
        userId: 'coach-1',
      ),
    );
    check(added).equals(
      const EkkloReactionAdded(
        conversationId: 'conv-1',
        messageId: 'msg-1',
        emoji: '🔥',
        newCount: 2,
        mineNow: true,
        userId: 'coach-1',
      ),
    );
    check(removed).isA<EkkloReactionRemoved>()
      ..has((e) => e.newCount, 'newCount').equals(2)
      ..has((e) => e.mineNow, 'mineNow').isFalse();
  });

  test('a closure by the server ends the events and gives its code', () async {
    final (_, server, socket) = await _connected();

    await server.peer.close(4001, 'expired');

    check(
      await socket.closed,
    ).equals(const EkkloSocketClosure(code: 4001, reason: 'expired'));
    await check(socket.events.toList()).completes((e) => e.isEmpty());
  });

  test('closing the socket closes the connection', () async {
    final (_, server, socket) = await _connected();
    final peerEvents = server.peer.events.toList();

    await socket.close();

    check(await socket.closed).equals(const EkkloSocketClosure(code: 1000));
    final [CloseReceived(:code)] = (await peerEvents).cast<CloseReceived>();
    check(code).equals(1000);
  });
}
