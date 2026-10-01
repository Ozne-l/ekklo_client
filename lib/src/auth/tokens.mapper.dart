// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'tokens.dart';

class EkkloTokensMapper extends ClassMapperBase<EkkloTokens> {
  EkkloTokensMapper._();

  static EkkloTokensMapper? _instance;
  static EkkloTokensMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloTokensMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloTokens';

  static String _$accessToken(EkkloTokens v) => v.accessToken;
  static const Field<EkkloTokens, String> _f$accessToken = Field(
    'accessToken',
    _$accessToken,
    key: r'access_token',
  );
  static String _$refreshToken(EkkloTokens v) => v.refreshToken;
  static const Field<EkkloTokens, String> _f$refreshToken = Field(
    'refreshToken',
    _$refreshToken,
    key: r'refresh_token',
  );

  @override
  final MappableFields<EkkloTokens> fields = const {
    #accessToken: _f$accessToken,
    #refreshToken: _f$refreshToken,
  };
  @override
  final bool ignoreNull = true;

  static EkkloTokens _instantiate(DecodingData data) {
    return EkkloTokens(
      accessToken: data.dec(_f$accessToken),
      refreshToken: data.dec(_f$refreshToken),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloTokens fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloTokens>(map);
  }

  static EkkloTokens fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloTokens>(json);
  }
}

mixin EkkloTokensMappable {
  String toJson() {
    return EkkloTokensMapper.ensureInitialized().encodeJson<EkkloTokens>(
      this as EkkloTokens,
    );
  }

  Map<String, dynamic> toMap() {
    return EkkloTokensMapper.ensureInitialized().encodeMap<EkkloTokens>(
      this as EkkloTokens,
    );
  }

  EkkloTokensCopyWith<EkkloTokens, EkkloTokens, EkkloTokens> get copyWith =>
      _EkkloTokensCopyWithImpl<EkkloTokens, EkkloTokens>(
        this as EkkloTokens,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloTokensMapper.ensureInitialized().stringifyValue(
      this as EkkloTokens,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloTokensMapper.ensureInitialized().equalsValue(
      this as EkkloTokens,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloTokensMapper.ensureInitialized().hashValue(this as EkkloTokens);
  }
}

extension EkkloTokensValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloTokens, $Out> {
  EkkloTokensCopyWith<$R, EkkloTokens, $Out> get $asEkkloTokens =>
      $base.as((v, t, t2) => _EkkloTokensCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EkkloTokensCopyWith<$R, $In extends EkkloTokens, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? accessToken, String? refreshToken});
  EkkloTokensCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EkkloTokensCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloTokens, $Out>
    implements EkkloTokensCopyWith<$R, EkkloTokens, $Out> {
  _EkkloTokensCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloTokens> $mapper =
      EkkloTokensMapper.ensureInitialized();
  @override
  $R call({String? accessToken, String? refreshToken}) => $apply(
    FieldCopyWithData({
      if (accessToken != null) #accessToken: accessToken,
      if (refreshToken != null) #refreshToken: refreshToken,
    }),
  );
  @override
  EkkloTokens $make(CopyWithData data) => EkkloTokens(
    accessToken: data.get(#accessToken, or: $value.accessToken),
    refreshToken: data.get(#refreshToken, or: $value.refreshToken),
  );

  @override
  EkkloTokensCopyWith<$R2, EkkloTokens, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloTokensCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

