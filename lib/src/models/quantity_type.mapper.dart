// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'quantity_type.dart';

class EkkloQuantityTypeMapper extends EnumMapper<EkkloQuantityType> {
  EkkloQuantityTypeMapper._();

  static EkkloQuantityTypeMapper? _instance;
  static EkkloQuantityTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloQuantityTypeMapper._());
    }
    return _instance!;
  }

  static EkkloQuantityType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  EkkloQuantityType decode(dynamic value) {
    switch (value) {
      case r'grams':
        return EkkloQuantityType.grams;
      case r'cup':
        return EkkloQuantityType.cup;
      case '1/2 cup':
        return EkkloQuantityType.halfCup;
      case '1/3 cup':
        return EkkloQuantityType.thirdCup;
      case '1/4 cup':
        return EkkloQuantityType.quarterCup;
      case r'ml':
        return EkkloQuantityType.ml;
      case r'tablespoon':
        return EkkloQuantityType.tablespoon;
      case r'teaspoon':
        return EkkloQuantityType.teaspoon;
      case r'pieces':
        return EkkloQuantityType.pieces;
      case r'kilograms':
        return EkkloQuantityType.kilograms;
      case r'liters':
        return EkkloQuantityType.liters;
      case r'centiliters':
        return EkkloQuantityType.centiliters;
      case r'whole':
        return EkkloQuantityType.whole;
      case r'slice':
        return EkkloQuantityType.slice;
      case r'portion':
        return EkkloQuantityType.portion;
      case r'can':
        return EkkloQuantityType.can;
      case r'glass':
        return EkkloQuantityType.glass;
      case r'unknown':
        return EkkloQuantityType.unknown;
      default:
        return EkkloQuantityType.values[17];
    }
  }

  @override
  dynamic encode(EkkloQuantityType self) {
    switch (self) {
      case EkkloQuantityType.grams:
        return r'grams';
      case EkkloQuantityType.cup:
        return r'cup';
      case EkkloQuantityType.halfCup:
        return '1/2 cup';
      case EkkloQuantityType.thirdCup:
        return '1/3 cup';
      case EkkloQuantityType.quarterCup:
        return '1/4 cup';
      case EkkloQuantityType.ml:
        return r'ml';
      case EkkloQuantityType.tablespoon:
        return r'tablespoon';
      case EkkloQuantityType.teaspoon:
        return r'teaspoon';
      case EkkloQuantityType.pieces:
        return r'pieces';
      case EkkloQuantityType.kilograms:
        return r'kilograms';
      case EkkloQuantityType.liters:
        return r'liters';
      case EkkloQuantityType.centiliters:
        return r'centiliters';
      case EkkloQuantityType.whole:
        return r'whole';
      case EkkloQuantityType.slice:
        return r'slice';
      case EkkloQuantityType.portion:
        return r'portion';
      case EkkloQuantityType.can:
        return r'can';
      case EkkloQuantityType.glass:
        return r'glass';
      case EkkloQuantityType.unknown:
        return r'unknown';
    }
  }
}

extension EkkloQuantityTypeMapperExtension on EkkloQuantityType {
  dynamic toValue() {
    EkkloQuantityTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<EkkloQuantityType>(this);
  }
}

