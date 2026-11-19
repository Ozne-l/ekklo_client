import 'package:dart_mappable/dart_mappable.dart';

part 'send_text_request.mapper.dart';

@MappableClass()
class SendTextRequest with SendTextRequestMappable {
  const SendTextRequest({required this.content, this.replyToId});

  final String content;
  final String? replyToId;
}
