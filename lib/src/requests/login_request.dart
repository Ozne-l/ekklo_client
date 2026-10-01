import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/requests/login_client_type.dart';

part 'login_request.mapper.dart';

@MappableClass()
class LoginRequest with LoginRequestMappable {
  const LoginRequest({
    required this.email,
    required this.password,
    this.type = LoginClientType.mobile,
  });

  final String email;
  final String password;
  final LoginClientType type;
}
