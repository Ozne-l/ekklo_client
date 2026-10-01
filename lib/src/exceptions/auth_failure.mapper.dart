// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'auth_failure.dart';

class EkkloAuthFailureMapper extends EnumMapper<EkkloAuthFailure> {
  EkkloAuthFailureMapper._();

  static EkkloAuthFailureMapper? _instance;
  static EkkloAuthFailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloAuthFailureMapper._());
    }
    return _instance!;
  }

  static EkkloAuthFailure fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  EkkloAuthFailure decode(dynamic value) {
    switch (value) {
      case r'notSignedIn':
        return EkkloAuthFailure.notSignedIn;
      case r'invalidCredentials':
        return EkkloAuthFailure.invalidCredentials;
      case r'sessionExpired':
        return EkkloAuthFailure.sessionExpired;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(EkkloAuthFailure self) {
    switch (self) {
      case EkkloAuthFailure.notSignedIn:
        return r'notSignedIn';
      case EkkloAuthFailure.invalidCredentials:
        return r'invalidCredentials';
      case EkkloAuthFailure.sessionExpired:
        return r'sessionExpired';
    }
  }
}

extension EkkloAuthFailureMapperExtension on EkkloAuthFailure {
  String toValue() {
    EkkloAuthFailureMapper.ensureInitialized();
    return MapperContainer.globals.toValue<EkkloAuthFailure>(this) as String;
  }
}

