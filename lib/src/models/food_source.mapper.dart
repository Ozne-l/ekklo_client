// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'food_source.dart';

class EkkloFoodSourceMapper extends EnumMapper<EkkloFoodSource> {
  EkkloFoodSourceMapper._();

  static EkkloFoodSourceMapper? _instance;
  static EkkloFoodSourceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloFoodSourceMapper._());
    }
    return _instance!;
  }

  static EkkloFoodSource fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  EkkloFoodSource decode(dynamic value) {
    switch (value) {
      case r'ekklo':
        return EkkloFoodSource.ekklo;
      case r'ciqual':
        return EkkloFoodSource.ciqual;
      case r'openfoodfacts':
        return EkkloFoodSource.openfoodfacts;
      case r'unknown':
        return EkkloFoodSource.unknown;
      default:
        return EkkloFoodSource.values[3];
    }
  }

  @override
  dynamic encode(EkkloFoodSource self) {
    switch (self) {
      case EkkloFoodSource.ekklo:
        return r'ekklo';
      case EkkloFoodSource.ciqual:
        return r'ciqual';
      case EkkloFoodSource.openfoodfacts:
        return r'openfoodfacts';
      case EkkloFoodSource.unknown:
        return r'unknown';
    }
  }
}

extension EkkloFoodSourceMapperExtension on EkkloFoodSource {
  String toValue() {
    EkkloFoodSourceMapper.ensureInitialized();
    return MapperContainer.globals.toValue<EkkloFoodSource>(this) as String;
  }
}

