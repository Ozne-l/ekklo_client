import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/hooks.dart';
import 'package:ekklo_client/src/models/message.dart';
import 'package:ekklo_client/src/models/person.dart';

part 'conversation.mapper.dart';

@MappableClass(hook: ReceivedJsonHook())
class EkkloConversation with EkkloConversationMappable {
  const EkkloConversation({
    required this.id,
    required this.canSend,
    this.unreadCount = 0,
    this.isPinned = false,
    this.coach,
    this.customer,
    this.updatedAt,
    this.lastMessages = const [],
    this.receivedJson = const {},
  });

  final String id;
  final bool canSend;
  final int unreadCount;
  final bool isPinned;
  final EkkloPerson? coach;
  final EkkloPerson? customer;
  final DateTime? updatedAt;

  @MappableField(hook: NullToEmptyListHook())
  final List<EkkloMessage> lastMessages;

  @MappableField(key: ReceivedJsonHook.key)
  final Map<String, dynamic> receivedJson;
}
