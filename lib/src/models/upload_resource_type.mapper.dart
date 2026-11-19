// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'upload_resource_type.dart';

class EkkloUploadResourceTypeMapper
    extends EnumMapper<EkkloUploadResourceType> {
  EkkloUploadResourceTypeMapper._();

  static EkkloUploadResourceTypeMapper? _instance;
  static EkkloUploadResourceTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = EkkloUploadResourceTypeMapper._(),
      );
    }
    return _instance!;
  }

  static EkkloUploadResourceType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  EkkloUploadResourceType decode(dynamic value) {
    switch (value) {
      case r'message_image':
        return EkkloUploadResourceType.messageImage;
      case r'message_video':
        return EkkloUploadResourceType.messageVideo;
      case r'message_voice':
        return EkkloUploadResourceType.messageVoice;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(EkkloUploadResourceType self) {
    switch (self) {
      case EkkloUploadResourceType.messageImage:
        return r'message_image';
      case EkkloUploadResourceType.messageVideo:
        return r'message_video';
      case EkkloUploadResourceType.messageVoice:
        return r'message_voice';
    }
  }
}

extension EkkloUploadResourceTypeMapperExtension on EkkloUploadResourceType {
  String toValue() {
    EkkloUploadResourceTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<EkkloUploadResourceType>(this)
        as String;
  }
}

