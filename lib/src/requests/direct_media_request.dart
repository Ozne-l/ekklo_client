import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/direct_media.dart';

part 'direct_media_request.mapper.dart';

@MappableClass()
class DirectMediaRequest with DirectMediaRequestMappable {
  const DirectMediaRequest({
    required this.medias,
    this.caption,
    this.replyToId,
  });

  final List<EkkloDirectMedia> medias;
  final String? caption;
  final String? replyToId;
}
