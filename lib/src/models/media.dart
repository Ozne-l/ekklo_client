import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/exceptions/uri_mapper.dart';
import 'package:ekklo_client/src/models/media_kind.dart';

part 'media.mapper.dart';

@MappableClass(includeCustomMappers: [UriMapper()])
class EkkloMedia with EkkloMediaMappable {
  const EkkloMedia({required this.url, required this.kind});

  final Uri url;
  final EkkloMediaKind kind;
}
