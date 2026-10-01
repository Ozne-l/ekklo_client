// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'jwt_claims.dart';

class JwtClaimsMapper extends ClassMapperBase<JwtClaims> {
  JwtClaimsMapper._();

  static JwtClaimsMapper? _instance;
  static JwtClaimsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JwtClaimsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'JwtClaims';

  static int? _$exp(JwtClaims v) => v.exp;
  static const Field<JwtClaims, int> _f$exp = Field('exp', _$exp, opt: true);

  @override
  final MappableFields<JwtClaims> fields = const {#exp: _f$exp};
  @override
  final bool ignoreNull = true;

  static JwtClaims _instantiate(DecodingData data) {
    return JwtClaims(exp: data.dec(_f$exp));
  }

  @override
  final Function instantiate = _instantiate;

  static JwtClaims fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JwtClaims>(map);
  }

  static JwtClaims fromJson(String json) {
    return ensureInitialized().decodeJson<JwtClaims>(json);
  }
}

mixin JwtClaimsMappable {
  String toJson() {
    return JwtClaimsMapper.ensureInitialized().encodeJson<JwtClaims>(
      this as JwtClaims,
    );
  }

  Map<String, dynamic> toMap() {
    return JwtClaimsMapper.ensureInitialized().encodeMap<JwtClaims>(
      this as JwtClaims,
    );
  }

  JwtClaimsCopyWith<JwtClaims, JwtClaims, JwtClaims> get copyWith =>
      _JwtClaimsCopyWithImpl<JwtClaims, JwtClaims>(
        this as JwtClaims,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return JwtClaimsMapper.ensureInitialized().stringifyValue(
      this as JwtClaims,
    );
  }

  @override
  bool operator ==(Object other) {
    return JwtClaimsMapper.ensureInitialized().equalsValue(
      this as JwtClaims,
      other,
    );
  }

  @override
  int get hashCode {
    return JwtClaimsMapper.ensureInitialized().hashValue(this as JwtClaims);
  }
}

extension JwtClaimsValueCopy<$R, $Out> on ObjectCopyWith<$R, JwtClaims, $Out> {
  JwtClaimsCopyWith<$R, JwtClaims, $Out> get $asJwtClaims =>
      $base.as((v, t, t2) => _JwtClaimsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class JwtClaimsCopyWith<$R, $In extends JwtClaims, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? exp});
  JwtClaimsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _JwtClaimsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, JwtClaims, $Out>
    implements JwtClaimsCopyWith<$R, JwtClaims, $Out> {
  _JwtClaimsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JwtClaims> $mapper =
      JwtClaimsMapper.ensureInitialized();
  @override
  $R call({Object? exp = $none}) =>
      $apply(FieldCopyWithData({if (exp != $none) #exp: exp}));
  @override
  JwtClaims $make(CopyWithData data) =>
      JwtClaims(exp: data.get(#exp, or: $value.exp));

  @override
  JwtClaimsCopyWith<$R2, JwtClaims, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _JwtClaimsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

