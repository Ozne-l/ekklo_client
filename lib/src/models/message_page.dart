import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/hooks.dart';
import 'package:ekklo_client/src/models/message.dart';

part 'message_page.mapper.dart';

@MappableClass()
class EkkloMessagePage with EkkloMessagePageMappable {
  const EkkloMessagePage({required this.hasMore, this.messages = const []});

  @MappableField(hook: NullToEmptyListHook())
  final List<EkkloMessage> messages;

  final bool hasMore;
}
