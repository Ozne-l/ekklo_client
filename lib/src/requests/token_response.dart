import 'package:dart_mappable/dart_mappable.dart';

part 'token_response.mapper.dart';

@MappableClass()
class TokenResponse with TokenResponseMappable {
  const TokenResponse({required this.accessToken, this.refreshToken});

  final String accessToken;
  final String? refreshToken;
}
