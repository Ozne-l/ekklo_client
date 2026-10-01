// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_foods_type.dart';

class UserFoodsTypeMapper extends EnumMapper<UserFoodsType> {
  UserFoodsTypeMapper._();

  static UserFoodsTypeMapper? _instance;
  static UserFoodsTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserFoodsTypeMapper._());
    }
    return _instance!;
  }

  static UserFoodsType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  UserFoodsType decode(dynamic value) {
    switch (value) {
      case r'recent':
        return UserFoodsType.recent;
      case r'frequent':
        return UserFoodsType.frequent;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(UserFoodsType self) {
    switch (self) {
      case UserFoodsType.recent:
        return r'recent';
      case UserFoodsType.frequent:
        return r'frequent';
    }
  }
}

extension UserFoodsTypeMapperExtension on UserFoodsType {
  String toValue() {
    UserFoodsTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<UserFoodsType>(this) as String;
  }
}

