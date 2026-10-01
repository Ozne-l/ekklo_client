// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'login_client_type.dart';

class LoginClientTypeMapper extends EnumMapper<LoginClientType> {
  LoginClientTypeMapper._();

  static LoginClientTypeMapper? _instance;
  static LoginClientTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoginClientTypeMapper._());
    }
    return _instance!;
  }

  static LoginClientType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  LoginClientType decode(dynamic value) {
    switch (value) {
      case r'mobile':
        return LoginClientType.mobile;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(LoginClientType self) {
    switch (self) {
      case LoginClientType.mobile:
        return r'mobile';
    }
  }
}

extension LoginClientTypeMapperExtension on LoginClientType {
  String toValue() {
    LoginClientTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<LoginClientType>(this) as String;
  }
}

