// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'food_owner.dart';

class EkkloFoodOwnerMapper extends EnumMapper<EkkloFoodOwner> {
  EkkloFoodOwnerMapper._();

  static EkkloFoodOwnerMapper? _instance;
  static EkkloFoodOwnerMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloFoodOwnerMapper._());
    }
    return _instance!;
  }

  static EkkloFoodOwner fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  EkkloFoodOwner decode(dynamic value) {
    switch (value) {
      case r'me':
        return EkkloFoodOwner.me;
      case r'ekklo':
        return EkkloFoodOwner.ekklo;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(EkkloFoodOwner self) {
    switch (self) {
      case EkkloFoodOwner.me:
        return r'me';
      case EkkloFoodOwner.ekklo:
        return r'ekklo';
    }
  }
}

extension EkkloFoodOwnerMapperExtension on EkkloFoodOwner {
  String toValue() {
    EkkloFoodOwnerMapper.ensureInitialized();
    return MapperContainer.globals.toValue<EkkloFoodOwner>(this) as String;
  }
}

