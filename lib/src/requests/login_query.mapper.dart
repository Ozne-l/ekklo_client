// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'login_query.dart';

class LoginQueryMapper extends ClassMapperBase<LoginQuery> {
  LoginQueryMapper._();

  static LoginQueryMapper? _instance;
  static LoginQueryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoginQueryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LoginQuery';

  static bool _$mobile(LoginQuery v) => v.mobile;
  static const Field<LoginQuery, bool> _f$mobile = Field(
    'mobile',
    _$mobile,
    opt: true,
    def: true,
  );

  @override
  final MappableFields<LoginQuery> fields = const {#mobile: _f$mobile};
  @override
  final bool ignoreNull = true;

  static LoginQuery _instantiate(DecodingData data) {
    return LoginQuery(mobile: data.dec(_f$mobile));
  }

  @override
  final Function instantiate = _instantiate;

  static LoginQuery fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoginQuery>(map);
  }

  static LoginQuery fromJson(String json) {
    return ensureInitialized().decodeJson<LoginQuery>(json);
  }
}

mixin LoginQueryMappable {
  String toJson() {
    return LoginQueryMapper.ensureInitialized().encodeJson<LoginQuery>(
      this as LoginQuery,
    );
  }

  Map<String, dynamic> toMap() {
    return LoginQueryMapper.ensureInitialized().encodeMap<LoginQuery>(
      this as LoginQuery,
    );
  }

  LoginQueryCopyWith<LoginQuery, LoginQuery, LoginQuery> get copyWith =>
      _LoginQueryCopyWithImpl<LoginQuery, LoginQuery>(
        this as LoginQuery,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return LoginQueryMapper.ensureInitialized().stringifyValue(
      this as LoginQuery,
    );
  }

  @override
  bool operator ==(Object other) {
    return LoginQueryMapper.ensureInitialized().equalsValue(
      this as LoginQuery,
      other,
    );
  }

  @override
  int get hashCode {
    return LoginQueryMapper.ensureInitialized().hashValue(this as LoginQuery);
  }
}

extension LoginQueryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LoginQuery, $Out> {
  LoginQueryCopyWith<$R, LoginQuery, $Out> get $asLoginQuery =>
      $base.as((v, t, t2) => _LoginQueryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LoginQueryCopyWith<$R, $In extends LoginQuery, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? mobile});
  LoginQueryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LoginQueryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LoginQuery, $Out>
    implements LoginQueryCopyWith<$R, LoginQuery, $Out> {
  _LoginQueryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LoginQuery> $mapper =
      LoginQueryMapper.ensureInitialized();
  @override
  $R call({bool? mobile}) =>
      $apply(FieldCopyWithData({if (mobile != null) #mobile: mobile}));
  @override
  LoginQuery $make(CopyWithData data) =>
      LoginQuery(mobile: data.get(#mobile, or: $value.mobile));

  @override
  LoginQueryCopyWith<$R2, LoginQuery, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _LoginQueryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

