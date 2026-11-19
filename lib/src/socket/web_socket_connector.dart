import 'dart:io' as io;

import 'package:web_socket/io_web_socket.dart';
import 'package:web_socket/web_socket.dart';

typedef EkkloWebSocketConnector =
    Future<WebSocket> Function(Uri uri, Map<String, String> headers);

Future<WebSocket> connectIoWebSocket(
  Uri uri,
  Map<String, String> headers,
) async => IOWebSocket.fromWebSocket(
  await io.WebSocket.connect('$uri', headers: headers),
);
