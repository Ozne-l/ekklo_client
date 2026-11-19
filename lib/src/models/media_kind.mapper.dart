// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'media_kind.dart';

class EkkloMediaKindMapper extends EnumMapper<EkkloMediaKind> {
  EkkloMediaKindMapper._();

  static EkkloMediaKindMapper? _instance;
  static EkkloMediaKindMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloMediaKindMapper._());
    }
    return _instance!;
  }

  static EkkloMediaKind fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  EkkloMediaKind decode(dynamic value) {
    switch (value) {
      case r'image':
        return EkkloMediaKind.image;
      case r'video':
        return EkkloMediaKind.video;
      case r'voice':
        return EkkloMediaKind.voice;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(EkkloMediaKind self) {
    switch (self) {
      case EkkloMediaKind.image:
        return r'image';
      case EkkloMediaKind.video:
        return r'video';
      case EkkloMediaKind.voice:
        return r'voice';
    }
  }
}

extension EkkloMediaKindMapperExtension on EkkloMediaKind {
  String toValue() {
    EkkloMediaKindMapper.ensureInitialized();
    return MapperContainer.globals.toValue<EkkloMediaKind>(this) as String;
  }
}

