import 'package:dart_mappable/dart_mappable.dart';

part 'upload_resource_type.mapper.dart';

@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum EkkloUploadResourceType { messageImage, messageVideo, messageVoice }
