// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'direct_media_type.dart';

class EkkloDirectMediaTypeMapper extends EnumMapper<EkkloDirectMediaType> {
  EkkloDirectMediaTypeMapper._();

  static EkkloDirectMediaTypeMapper? _instance;
  static EkkloDirectMediaTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloDirectMediaTypeMapper._());
    }
    return _instance!;
  }

  static EkkloDirectMediaType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  EkkloDirectMediaType decode(dynamic value) {
    switch (value) {
      case r'image':
        return EkkloDirectMediaType.image;
      case r'video':
        return EkkloDirectMediaType.video;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(EkkloDirectMediaType self) {
    switch (self) {
      case EkkloDirectMediaType.image:
        return r'image';
      case EkkloDirectMediaType.video:
        return r'video';
    }
  }
}

extension EkkloDirectMediaTypeMapperExtension on EkkloDirectMediaType {
  String toValue() {
    EkkloDirectMediaTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<EkkloDirectMediaType>(this)
        as String;
  }
}

