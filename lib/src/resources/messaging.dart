import 'package:ekklo_client/src/decoding.dart';
import 'package:ekklo_client/src/exceptions/ekklo_exception.dart';
import 'package:ekklo_client/src/http_method.dart';
import 'package:ekklo_client/src/models/conversation.dart';
import 'package:ekklo_client/src/models/direct_media.dart';
import 'package:ekklo_client/src/models/message.dart';
import 'package:ekklo_client/src/models/message_page.dart';
import 'package:ekklo_client/src/models/presigned_upload.dart';
import 'package:ekklo_client/src/models/reaction.dart';
import 'package:ekklo_client/src/models/upload_resource_type.dart';
import 'package:ekklo_client/src/models/user.dart';
import 'package:ekklo_client/src/requests/conversations_response.dart';
import 'package:ekklo_client/src/requests/direct_media_request.dart';
import 'package:ekklo_client/src/requests/messages_query.dart';
import 'package:ekklo_client/src/requests/presign_request.dart';
import 'package:ekklo_client/src/requests/reaction_request.dart';
import 'package:ekklo_client/src/requests/send_text_request.dart';
import 'package:ekklo_client/src/requests/voice_message_request.dart';
import 'package:ekklo_client/src/socket/messaging_socket.dart';
import 'package:ekklo_client/src/transport.dart';

final class EkkloMessaging {
  const EkkloMessaging(this._transport);

  static const _me = '/api/v1/users/me';
  static const _conversations = '/api/v1/messaging/conversations';
  static const _presign = '/api/v1/uploads/presigned-url';
  static const _socket = '/api/v1/messaging/ws';
  static const _failedDeletionStatus = 500;

  static const pageSize = 50;
  static const defaultTimeout = Duration(seconds: 30);
  static const directMediaTimeout = Duration(seconds: 120);

  final EkkloTransport _transport;

  Future<EkkloUser> me() => _transport.request(
    HttpMethod.get,
    _me,
    mapped(EkkloUserMapper.fromMap),
    timeout: defaultTimeout,
  );

  Future<List<EkkloConversation>> conversations() => _transport.request(
    HttpMethod.get,
    _conversations,
    (json) => ConversationsResponseMapper.fromMap(asMap(json)).conversations,
    timeout: defaultTimeout,
  );

  Future<EkkloMessagePage> messages(
    String conversationId, {
    int limit = pageSize,
    String? beforeId,
  }) => _transport.request(
    HttpMethod.get,
    '$_conversations/$conversationId/messages',
    (json) => _oldestFirst(EkkloMessagePageMapper.fromMap(asMap(json))),
    query: MessagesQuery(limit: limit, beforeId: beforeId).toMap(),
    timeout: defaultTimeout,
  );

  Future<EkkloMessage> sendText(
    String conversationId,
    String content, {
    String? replyToId,
  }) => _transport.request(
    HttpMethod.post,
    '$_conversations/$conversationId/messages',
    mapped(EkkloMessageMapper.fromMap),
    body: SendTextRequest(content: content, replyToId: replyToId).toMap(),
    timeout: defaultTimeout,
  );

  Future<EkkloMessage> sendMedia(
    String conversationId,
    List<EkkloDirectMedia> medias, {
    String? caption,
    String? replyToId,
  }) => _transport.request(
    HttpMethod.post,
    '$_conversations/$conversationId/direct-media',
    mapped(EkkloMessageMapper.fromMap),
    body: DirectMediaRequest(
      medias: medias,
      caption: switch (caption) {
        '' => null,
        _ => caption,
      },
      replyToId: replyToId,
    ).toMap(),
    timeout: directMediaTimeout,
  );

  Future<EkkloMessage> sendVoice(
    String conversationId, {
    required Uri url,
    required int durationSeconds,
    String? replyToId,
  }) => _transport.request(
    HttpMethod.post,
    '$_conversations/$conversationId/voice-message',
    mapped(EkkloMessageMapper.fromMap),
    body: VoiceMessageRequest(
      url: '$url',
      duration: durationSeconds,
      replyToId: replyToId,
    ).toMap(),
    timeout: defaultTimeout,
  );

  Future<EkkloPresignedUpload> presignUpload({
    required String fileName,
    required String fileType,
    required EkkloUploadResourceType resourceType,
    required String resourceId,
  }) => _transport.request(
    HttpMethod.post,
    _presign,
    mapped(EkkloPresignedUploadMapper.fromMap),
    body: PresignRequest(
      fileName: fileName,
      fileType: fileType,
      resourceType: resourceType,
      resourceId: resourceId,
    ).toMap(),
    timeout: defaultTimeout,
  );

  Future<void> deleteMessage(String conversationId, String messageId) async {
    try {
      await _transport.request(
        HttpMethod.delete,
        '$_conversations/$conversationId/messages/$messageId',
        ignoreBody,
        timeout: defaultTimeout,
      );
    } on EkkloApiException catch (error) {
      throw switch (error.statusCode) {
        _failedDeletionStatus => EkkloMessageNotDeletedException(
          method: error.method,
          uri: error.uri,
          statusCode: error.statusCode,
          errors: error.errors,
        ),
        _ => error,
      };
    }
  }

  Future<void> markRead(String conversationId) => _transport.request(
    HttpMethod.post,
    '$_conversations/$conversationId/read',
    ignoreBody,
    timeout: defaultTimeout,
  );

  Future<EkkloReaction> addReaction(
    String conversationId,
    String messageId,
    String emoji,
  ) => _react(HttpMethod.post, conversationId, messageId, emoji);

  Future<EkkloReaction> removeReaction(
    String conversationId,
    String messageId,
    String emoji,
  ) => _react(HttpMethod.delete, conversationId, messageId, emoji);

  Future<EkkloMessagingSocket> connectSocket() async =>
      EkkloMessagingSocket(await _transport.connectWebSocket(_socket));

  Future<EkkloReaction> _react(
    HttpMethod method,
    String conversationId,
    String messageId,
    String emoji,
  ) => _transport.request(
    method,
    '$_conversations/$conversationId/messages/$messageId/reactions',
    mapped(EkkloReactionMapper.fromMap),
    body: ReactionRequest(emoji: emoji).toMap(),
    timeout: defaultTimeout,
  );

  static EkkloMessagePage _oldestFirst(EkkloMessagePage page) {
    final indexed = page.messages.indexed.toList()
      ..sort(
        (a, b) => switch (a.$2.createdAt.compareTo(b.$2.createdAt)) {
          0 => a.$1.compareTo(b.$1),
          final order => order,
        },
      );
    return page.copyWith(
      messages: [for (final (_, message) in indexed) message],
    );
  }
}
