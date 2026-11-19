import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/conversation.dart';
import 'package:ekklo_client/src/models/hooks.dart';

part 'conversations_response.mapper.dart';

@MappableClass()
class ConversationsResponse with ConversationsResponseMappable {
  const ConversationsResponse({this.conversations = const []});

  @MappableField(hook: NullToEmptyListHook())
  final List<EkkloConversation> conversations;
}
