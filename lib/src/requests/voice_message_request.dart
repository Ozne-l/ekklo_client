import 'package:dart_mappable/dart_mappable.dart';

part 'voice_message_request.mapper.dart';

@MappableClass()
class VoiceMessageRequest with VoiceMessageRequestMappable {
  const VoiceMessageRequest({
    required this.url,
    required this.duration,
    this.replyToId,
  });

  final String url;
  final int duration;
  final String? replyToId;
}
