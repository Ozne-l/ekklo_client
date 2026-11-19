import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/exceptions/uri_mapper.dart';

part 'presigned_upload.mapper.dart';

@MappableClass(includeCustomMappers: [UriMapper()])
class EkkloPresignedUpload with EkkloPresignedUploadMappable {
  const EkkloPresignedUpload({
    required this.uploadUrl,
    required this.fileKey,
    required this.publicUrl,
    required this.expiresAt,
  });

  final Uri uploadUrl;
  final String fileKey;
  final Uri publicUrl;
  final DateTime expiresAt;
}
