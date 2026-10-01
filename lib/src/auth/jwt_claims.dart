import 'dart:convert';

import 'package:dart_mappable/dart_mappable.dart';

part 'jwt_claims.mapper.dart';

@MappableClass()
class JwtClaims with JwtClaimsMappable {
  const JwtClaims({this.exp});

  final int? exp;

  static JwtClaims? tryParse(String jwt) => switch (jwt.split('.')) {
    [_, final payload, _] => _decodePayload(payload),
    _ => null,
  };

  DateTime? get expiresAt => switch (exp) {
    final seconds? => DateTime.fromMillisecondsSinceEpoch(
      seconds * 1000,
      isUtc: true,
    ),
    null => null,
  };
}

JwtClaims? _decodePayload(String payload) {
  try {
    return JwtClaimsMapper.fromJson(
      utf8.decode(base64Url.decode(base64Url.normalize(payload))),
    );
  } on FormatException {
    return null;
  } on MapperException {
    return null;
  }
}
