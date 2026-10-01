// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_foods_response.dart';

class UserFoodsResponseMapper extends ClassMapperBase<UserFoodsResponse> {
  UserFoodsResponseMapper._();

  static UserFoodsResponseMapper? _instance;
  static UserFoodsResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserFoodsResponseMapper._());
      EkkloFoodMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserFoodsResponse';

  static List<EkkloFood>? _$recent(UserFoodsResponse v) => v.recent;
  static const Field<UserFoodsResponse, List<EkkloFood>> _f$recent = Field(
    'recent',
    _$recent,
    opt: true,
  );
  static List<EkkloFood>? _$frequent(UserFoodsResponse v) => v.frequent;
  static const Field<UserFoodsResponse, List<EkkloFood>> _f$frequent = Field(
    'frequent',
    _$frequent,
    opt: true,
  );

  @override
  final MappableFields<UserFoodsResponse> fields = const {
    #recent: _f$recent,
    #frequent: _f$frequent,
  };
  @override
  final bool ignoreNull = true;

  static UserFoodsResponse _instantiate(DecodingData data) {
    return UserFoodsResponse(
      recent: data.dec(_f$recent),
      frequent: data.dec(_f$frequent),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static UserFoodsResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserFoodsResponse>(map);
  }

  static UserFoodsResponse fromJson(String json) {
    return ensureInitialized().decodeJson<UserFoodsResponse>(json);
  }
}

mixin UserFoodsResponseMappable {
  String toJson() {
    return UserFoodsResponseMapper.ensureInitialized()
        .encodeJson<UserFoodsResponse>(this as UserFoodsResponse);
  }

  Map<String, dynamic> toMap() {
    return UserFoodsResponseMapper.ensureInitialized()
        .encodeMap<UserFoodsResponse>(this as UserFoodsResponse);
  }

  UserFoodsResponseCopyWith<
    UserFoodsResponse,
    UserFoodsResponse,
    UserFoodsResponse
  >
  get copyWith =>
      _UserFoodsResponseCopyWithImpl<UserFoodsResponse, UserFoodsResponse>(
        this as UserFoodsResponse,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return UserFoodsResponseMapper.ensureInitialized().stringifyValue(
      this as UserFoodsResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return UserFoodsResponseMapper.ensureInitialized().equalsValue(
      this as UserFoodsResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return UserFoodsResponseMapper.ensureInitialized().hashValue(
      this as UserFoodsResponse,
    );
  }
}

extension UserFoodsResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserFoodsResponse, $Out> {
  UserFoodsResponseCopyWith<$R, UserFoodsResponse, $Out>
  get $asUserFoodsResponse => $base.as(
    (v, t, t2) => _UserFoodsResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class UserFoodsResponseCopyWith<
  $R,
  $In extends UserFoodsResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, EkkloFood, EkkloFoodCopyWith<$R, EkkloFood, EkkloFood>>?
  get recent;
  ListCopyWith<$R, EkkloFood, EkkloFoodCopyWith<$R, EkkloFood, EkkloFood>>?
  get frequent;
  $R call({List<EkkloFood>? recent, List<EkkloFood>? frequent});
  UserFoodsResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _UserFoodsResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserFoodsResponse, $Out>
    implements UserFoodsResponseCopyWith<$R, UserFoodsResponse, $Out> {
  _UserFoodsResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserFoodsResponse> $mapper =
      UserFoodsResponseMapper.ensureInitialized();
  @override
  ListCopyWith<$R, EkkloFood, EkkloFoodCopyWith<$R, EkkloFood, EkkloFood>>?
  get recent => $value.recent != null
      ? ListCopyWith(
          $value.recent!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(recent: v),
        )
      : null;
  @override
  ListCopyWith<$R, EkkloFood, EkkloFoodCopyWith<$R, EkkloFood, EkkloFood>>?
  get frequent => $value.frequent != null
      ? ListCopyWith(
          $value.frequent!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(frequent: v),
        )
      : null;
  @override
  $R call({Object? recent = $none, Object? frequent = $none}) => $apply(
    FieldCopyWithData({
      if (recent != $none) #recent: recent,
      if (frequent != $none) #frequent: frequent,
    }),
  );
  @override
  UserFoodsResponse $make(CopyWithData data) => UserFoodsResponse(
    recent: data.get(#recent, or: $value.recent),
    frequent: data.get(#frequent, or: $value.frequent),
  );

  @override
  UserFoodsResponseCopyWith<$R2, UserFoodsResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UserFoodsResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

