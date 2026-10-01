// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'meal_history_query.dart';

class MealHistoryQueryMapper extends ClassMapperBase<MealHistoryQuery> {
  MealHistoryQueryMapper._();

  static MealHistoryQueryMapper? _instance;
  static MealHistoryQueryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MealHistoryQueryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MealHistoryQuery';

  static int _$page(MealHistoryQuery v) => v.page;
  static const Field<MealHistoryQuery, int> _f$page = Field('page', _$page);
  static int _$limit(MealHistoryQuery v) => v.limit;
  static const Field<MealHistoryQuery, int> _f$limit = Field('limit', _$limit);

  @override
  final MappableFields<MealHistoryQuery> fields = const {
    #page: _f$page,
    #limit: _f$limit,
  };
  @override
  final bool ignoreNull = true;

  static MealHistoryQuery _instantiate(DecodingData data) {
    return MealHistoryQuery(page: data.dec(_f$page), limit: data.dec(_f$limit));
  }

  @override
  final Function instantiate = _instantiate;

  static MealHistoryQuery fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MealHistoryQuery>(map);
  }

  static MealHistoryQuery fromJson(String json) {
    return ensureInitialized().decodeJson<MealHistoryQuery>(json);
  }
}

mixin MealHistoryQueryMappable {
  String toJson() {
    return MealHistoryQueryMapper.ensureInitialized()
        .encodeJson<MealHistoryQuery>(this as MealHistoryQuery);
  }

  Map<String, dynamic> toMap() {
    return MealHistoryQueryMapper.ensureInitialized()
        .encodeMap<MealHistoryQuery>(this as MealHistoryQuery);
  }

  MealHistoryQueryCopyWith<MealHistoryQuery, MealHistoryQuery, MealHistoryQuery>
  get copyWith =>
      _MealHistoryQueryCopyWithImpl<MealHistoryQuery, MealHistoryQuery>(
        this as MealHistoryQuery,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MealHistoryQueryMapper.ensureInitialized().stringifyValue(
      this as MealHistoryQuery,
    );
  }

  @override
  bool operator ==(Object other) {
    return MealHistoryQueryMapper.ensureInitialized().equalsValue(
      this as MealHistoryQuery,
      other,
    );
  }

  @override
  int get hashCode {
    return MealHistoryQueryMapper.ensureInitialized().hashValue(
      this as MealHistoryQuery,
    );
  }
}

extension MealHistoryQueryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MealHistoryQuery, $Out> {
  MealHistoryQueryCopyWith<$R, MealHistoryQuery, $Out>
  get $asMealHistoryQuery =>
      $base.as((v, t, t2) => _MealHistoryQueryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MealHistoryQueryCopyWith<$R, $In extends MealHistoryQuery, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? page, int? limit});
  MealHistoryQueryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _MealHistoryQueryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MealHistoryQuery, $Out>
    implements MealHistoryQueryCopyWith<$R, MealHistoryQuery, $Out> {
  _MealHistoryQueryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MealHistoryQuery> $mapper =
      MealHistoryQueryMapper.ensureInitialized();
  @override
  $R call({int? page, int? limit}) => $apply(
    FieldCopyWithData({
      if (page != null) #page: page,
      if (limit != null) #limit: limit,
    }),
  );
  @override
  MealHistoryQuery $make(CopyWithData data) => MealHistoryQuery(
    page: data.get(#page, or: $value.page),
    limit: data.get(#limit, or: $value.limit),
  );

  @override
  MealHistoryQueryCopyWith<$R2, MealHistoryQuery, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MealHistoryQueryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

