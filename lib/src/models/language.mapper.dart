// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'language.dart';

class EkkloLanguageMapper extends EnumMapper<EkkloLanguage> {
  EkkloLanguageMapper._();

  static EkkloLanguageMapper? _instance;
  static EkkloLanguageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloLanguageMapper._());
    }
    return _instance!;
  }

  static EkkloLanguage fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  EkkloLanguage decode(dynamic value) {
    switch (value) {
      case r'fr':
        return EkkloLanguage.fr;
      case r'en':
        return EkkloLanguage.en;
      case r'es':
        return EkkloLanguage.es;
      case r'pt':
        return EkkloLanguage.pt;
      case r'de':
        return EkkloLanguage.de;
      case r'it':
        return EkkloLanguage.it;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(EkkloLanguage self) {
    switch (self) {
      case EkkloLanguage.fr:
        return r'fr';
      case EkkloLanguage.en:
        return r'en';
      case EkkloLanguage.es:
        return r'es';
      case EkkloLanguage.pt:
        return r'pt';
      case EkkloLanguage.de:
        return r'de';
      case EkkloLanguage.it:
        return r'it';
    }
  }
}

extension EkkloLanguageMapperExtension on EkkloLanguage {
  String toValue() {
    EkkloLanguageMapper.ensureInitialized();
    return MapperContainer.globals.toValue<EkkloLanguage>(this) as String;
  }
}

