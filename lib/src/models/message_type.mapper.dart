// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'message_type.dart';

class EkkloMessageTypeMapper extends EnumMapper<EkkloMessageType> {
  EkkloMessageTypeMapper._();

  static EkkloMessageTypeMapper? _instance;
  static EkkloMessageTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloMessageTypeMapper._());
    }
    return _instance!;
  }

  static EkkloMessageType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  EkkloMessageType decode(dynamic value) {
    switch (value) {
      case r'text':
        return EkkloMessageType.text;
      case r'image':
        return EkkloMessageType.image;
      case r'video':
        return EkkloMessageType.video;
      case r'audio':
        return EkkloMessageType.audio;
      case r'voice':
        return EkkloMessageType.voice;
      case r'mixed':
        return EkkloMessageType.mixed;
      case r'unknown':
        return EkkloMessageType.unknown;
      default:
        return EkkloMessageType.values[6];
    }
  }

  @override
  dynamic encode(EkkloMessageType self) {
    switch (self) {
      case EkkloMessageType.text:
        return r'text';
      case EkkloMessageType.image:
        return r'image';
      case EkkloMessageType.video:
        return r'video';
      case EkkloMessageType.audio:
        return r'audio';
      case EkkloMessageType.voice:
        return r'voice';
      case EkkloMessageType.mixed:
        return r'mixed';
      case EkkloMessageType.unknown:
        return r'unknown';
    }
  }
}

extension EkkloMessageTypeMapperExtension on EkkloMessageType {
  String toValue() {
    EkkloMessageTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<EkkloMessageType>(this) as String;
  }
}

