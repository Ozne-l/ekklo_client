import 'dart:async';
import 'dart:convert';

import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/socket/messaging_event.dart';
import 'package:ekklo_client/src/socket/socket_closure.dart';
import 'package:web_socket/web_socket.dart';

final class EkkloMessagingSocket {
  EkkloMessagingSocket(this._socket) {
    _subscription = _socket.events.listen(
      _receive,
      onError: (Object _) {},
      onDone: () => _finish(const EkkloSocketClosure()),
    );
  }

  static const normalClosure = 1000;

  final WebSocket _socket;
  final _events = StreamController<EkkloMessagingEvent>();
  final _closed = Completer<EkkloSocketClosure>();
  late final StreamSubscription<WebSocketEvent> _subscription;

  Stream<EkkloMessagingEvent> get events => _events.stream;

  Future<EkkloSocketClosure> get closed => _closed.future;

  void focusConversation(String conversationId) {
    try {
      _socket.sendText(
        jsonEncode({
          'event': 'focus_conversation',
          'data': {'conversation_id': conversationId},
        }),
      );
    } on WebSocketConnectionClosed {
      _finish(const EkkloSocketClosure());
    }
  }

  Future<void> close([int code = normalClosure]) async {
    _finish(EkkloSocketClosure(code: code));
    await _subscription.cancel();
    try {
      await _socket.close(code);
    } on WebSocketConnectionClosed {
      return;
    }
  }

  void _receive(WebSocketEvent event) {
    switch (event) {
      case TextDataReceived(:final text):
        if ((_decode(text), _events.isClosed) case (final decoded?, false)) {
          _events.add(decoded);
        }
      case CloseReceived(:final code, :final reason):
        _finish(EkkloSocketClosure(code: code, reason: reason));
      case BinaryDataReceived():
        return;
    }
  }

  static EkkloMessagingEvent? _decode(String text) {
    try {
      return EkkloMessagingEvent.fromFrame(jsonDecode(text));
    } on FormatException {
      return null;
    } on MapperException {
      return null;
    }
  }

  void _finish(EkkloSocketClosure closure) {
    if (_closed.isCompleted) return;
    _closed.complete(closure);
    unawaited(_events.close());
  }
}
