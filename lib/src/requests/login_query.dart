import 'package:dart_mappable/dart_mappable.dart';

part 'login_query.mapper.dart';

@MappableClass()
class LoginQuery with LoginQueryMappable {
  const LoginQuery({this.mobile = true});

  final bool mobile;
}
