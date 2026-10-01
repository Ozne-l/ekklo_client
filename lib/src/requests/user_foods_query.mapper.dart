// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_foods_query.dart';

class UserFoodsQueryMapper extends ClassMapperBase<UserFoodsQuery> {
  UserFoodsQueryMapper._();

  static UserFoodsQueryMapper? _instance;
  static UserFoodsQueryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserFoodsQueryMapper._());
      UserFoodsTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserFoodsQuery';

  static UserFoodsType _$type(UserFoodsQuery v) => v.type;
  static const Field<UserFoodsQuery, UserFoodsType> _f$type = Field(
    'type',
    _$type,
  );
  static int _$limit(UserFoodsQuery v) => v.limit;
  static const Field<UserFoodsQuery, int> _f$limit = Field('limit', _$limit);

  @override
  final MappableFields<UserFoodsQuery> fields = const {
    #type: _f$type,
    #limit: _f$limit,
  };
  @override
  final bool ignoreNull = true;

  static UserFoodsQuery _instantiate(DecodingData data) {
    return UserFoodsQuery(type: data.dec(_f$type), limit: data.dec(_f$limit));
  }

  @override
  final Function instantiate = _instantiate;

  static UserFoodsQuery fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserFoodsQuery>(map);
  }

  static UserFoodsQuery fromJson(String json) {
    return ensureInitialized().decodeJson<UserFoodsQuery>(json);
  }
}

mixin UserFoodsQueryMappable {
  String toJson() {
    return UserFoodsQueryMapper.ensureInitialized().encodeJson<UserFoodsQuery>(
      this as UserFoodsQuery,
    );
  }

  Map<String, dynamic> toMap() {
    return UserFoodsQueryMapper.ensureInitialized().encodeMap<UserFoodsQuery>(
      this as UserFoodsQuery,
    );
  }

  UserFoodsQueryCopyWith<UserFoodsQuery, UserFoodsQuery, UserFoodsQuery>
  get copyWith => _UserFoodsQueryCopyWithImpl<UserFoodsQuery, UserFoodsQuery>(
    this as UserFoodsQuery,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return UserFoodsQueryMapper.ensureInitialized().stringifyValue(
      this as UserFoodsQuery,
    );
  }

  @override
  bool operator ==(Object other) {
    return UserFoodsQueryMapper.ensureInitialized().equalsValue(
      this as UserFoodsQuery,
      other,
    );
  }

  @override
  int get hashCode {
    return UserFoodsQueryMapper.ensureInitialized().hashValue(
      this as UserFoodsQuery,
    );
  }
}

extension UserFoodsQueryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserFoodsQuery, $Out> {
  UserFoodsQueryCopyWith<$R, UserFoodsQuery, $Out> get $asUserFoodsQuery =>
      $base.as((v, t, t2) => _UserFoodsQueryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserFoodsQueryCopyWith<$R, $In extends UserFoodsQuery, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({UserFoodsType? type, int? limit});
  UserFoodsQueryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _UserFoodsQueryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserFoodsQuery, $Out>
    implements UserFoodsQueryCopyWith<$R, UserFoodsQuery, $Out> {
  _UserFoodsQueryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserFoodsQuery> $mapper =
      UserFoodsQueryMapper.ensureInitialized();
  @override
  $R call({UserFoodsType? type, int? limit}) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (limit != null) #limit: limit,
    }),
  );
  @override
  UserFoodsQuery $make(CopyWithData data) => UserFoodsQuery(
    type: data.get(#type, or: $value.type),
    limit: data.get(#limit, or: $value.limit),
  );

  @override
  UserFoodsQueryCopyWith<$R2, UserFoodsQuery, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UserFoodsQueryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

