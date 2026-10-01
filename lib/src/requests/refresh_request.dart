import 'package:dart_mappable/dart_mappable.dart';

part 'refresh_request.mapper.dart';

@MappableClass()
class RefreshRequest with RefreshRequestMappable {
  const RefreshRequest({required this.refreshToken});

  final String refreshToken;
}
