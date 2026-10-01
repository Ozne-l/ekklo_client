import 'package:dart_mappable/dart_mappable.dart';

part 'auth_failure.mapper.dart';

@MappableEnum()
enum EkkloAuthFailure { notSignedIn, invalidCredentials, sessionExpired }
