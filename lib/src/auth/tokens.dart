import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/auth/jwt_claims.dart';

part 'tokens.mapper.dart';

@MappableClass()
class EkkloTokens with EkkloTokensMappable {
  const EkkloTokens({required this.accessToken, required this.refreshToken});

  final String accessToken;
  final String refreshToken;

  DateTime? get accessTokenExpiresAt =>
      JwtClaims.tryParse(accessToken)?.expiresAt;
}
