import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/message_type.dart';

part 'reply_to.mapper.dart';

@MappableClass()
class EkkloReplyTo with EkkloReplyToMappable {
  const EkkloReplyTo({
    required this.id,
    this.senderId,
    this.senderName,
    this.content,
    this.type = EkkloMessageType.unknown,
    this.deleted = false,
  });

  final String id;
  final String? senderId;
  final String? senderName;
  final String? content;

  @MappableField(key: 'message_type')
  final EkkloMessageType type;

  final bool deleted;
}
