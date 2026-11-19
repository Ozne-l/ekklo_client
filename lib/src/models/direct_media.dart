import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/exceptions/uri_mapper.dart';
import 'package:ekklo_client/src/models/direct_media_type.dart';

part 'direct_media.mapper.dart';

@MappableClass(includeCustomMappers: [UriMapper()])
class EkkloDirectMedia with EkkloDirectMediaMappable {
  const EkkloDirectMedia({required this.url, required this.mediaType});

  final Uri url;
  final EkkloDirectMediaType mediaType;
}
