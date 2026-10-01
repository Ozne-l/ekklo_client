// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'meal_item_type.dart';

class EkkloMealItemTypeMapper extends EnumMapper<EkkloMealItemType> {
  EkkloMealItemTypeMapper._();

  static EkkloMealItemTypeMapper? _instance;
  static EkkloMealItemTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloMealItemTypeMapper._());
    }
    return _instance!;
  }

  static EkkloMealItemType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  EkkloMealItemType decode(dynamic value) {
    switch (value) {
      case r'food':
        return EkkloMealItemType.food;
      case r'recipe':
        return EkkloMealItemType.recipe;
      case r'unknown':
        return EkkloMealItemType.unknown;
      default:
        return EkkloMealItemType.values[2];
    }
  }

  @override
  dynamic encode(EkkloMealItemType self) {
    switch (self) {
      case EkkloMealItemType.food:
        return r'food';
      case EkkloMealItemType.recipe:
        return r'recipe';
      case EkkloMealItemType.unknown:
        return r'unknown';
    }
  }
}

extension EkkloMealItemTypeMapperExtension on EkkloMealItemType {
  String toValue() {
    EkkloMealItemTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<EkkloMealItemType>(this) as String;
  }
}

