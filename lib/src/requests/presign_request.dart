import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/upload_resource_type.dart';

part 'presign_request.mapper.dart';

@MappableClass()
class PresignRequest with PresignRequestMappable {
  const PresignRequest({
    required this.fileName,
    required this.fileType,
    required this.resourceType,
    required this.resourceId,
  });

  final String fileName;
  final String fileType;
  final EkkloUploadResourceType resourceType;
  final String resourceId;
}
