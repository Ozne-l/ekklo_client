import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/message.dart';

part 'messaging_event.mapper.dart';

sealed class EkkloMessagingEvent {
  const EkkloMessagingEvent();

  static EkkloMessagingEvent? fromFrame(Object? frame) => switch (frame) {
    {'event': 'new_message', 'data': final Map<String, dynamic> data} =>
      EkkloNewMessage(EkkloMessageMapper.fromMap(data)),
    {'event': 'message_edited', 'data': final Map<String, dynamic> data} =>
      EkkloMessageEdited(EkkloMessageMapper.fromMap(data)),
    {'event': 'message_deleted', 'data': final Map<String, dynamic> data} =>
      EkkloMessageDeletedMapper.fromMap(data),
    {'event': 'message_read', 'data': final Map<String, dynamic> data} =>
      EkkloMessageReadMapper.fromMap(data),
    {'event': 'reaction_added', 'data': final Map<String, dynamic> data} =>
      EkkloReactionAddedMapper.fromMap(data),
    {'event': 'reaction_removed', 'data': final Map<String, dynamic> data} =>
      EkkloReactionRemovedMapper.fromMap(data),
    _ => null,
  };
}

final class EkkloNewMessage extends EkkloMessagingEvent {
  const EkkloNewMessage(this.message);

  final EkkloMessage message;
}

final class EkkloMessageEdited extends EkkloMessagingEvent {
  const EkkloMessageEdited(this.message);

  final EkkloMessage message;
}

@MappableClass()
final class EkkloMessageDeleted extends EkkloMessagingEvent
    with EkkloMessageDeletedMappable {
  const EkkloMessageDeleted({
    required this.conversationId,
    required this.messageId,
  });

  final String conversationId;
  final String messageId;
}

@MappableClass()
final class EkkloMessageRead extends EkkloMessagingEvent
    with EkkloMessageReadMappable {
  const EkkloMessageRead({
    required this.conversationId,
    this.messageId,
    this.userId,
  });

  final String conversationId;
  final String? messageId;
  final String? userId;
}

sealed class EkkloReactionEvent extends EkkloMessagingEvent {
  const EkkloReactionEvent({
    required this.conversationId,
    required this.messageId,
    required this.emoji,
    required this.newCount,
    required this.mineNow,
    required this.userId,
  });

  final String conversationId;
  final String messageId;
  final String emoji;
  final int newCount;
  final bool mineNow;
  final String userId;
}

@MappableClass()
final class EkkloReactionAdded extends EkkloReactionEvent
    with EkkloReactionAddedMappable {
  const EkkloReactionAdded({
    required super.conversationId,
    required super.messageId,
    required super.emoji,
    required super.newCount,
    required super.mineNow,
    required super.userId,
  });
}

@MappableClass()
final class EkkloReactionRemoved extends EkkloReactionEvent
    with EkkloReactionRemovedMappable {
  const EkkloReactionRemoved({
    required super.conversationId,
    required super.messageId,
    required super.emoji,
    required super.newCount,
    required super.mineNow,
    required super.userId,
  });
}
