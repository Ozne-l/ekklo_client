// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'daily_meals_query.dart';

class DailyMealsQueryMapper extends ClassMapperBase<DailyMealsQuery> {
  DailyMealsQueryMapper._();

  static DailyMealsQueryMapper? _instance;
  static DailyMealsQueryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DailyMealsQueryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DailyMealsQuery';

  static String _$date(DailyMealsQuery v) => v.date;
  static const Field<DailyMealsQuery, String> _f$date = Field('date', _$date);

  @override
  final MappableFields<DailyMealsQuery> fields = const {#date: _f$date};
  @override
  final bool ignoreNull = true;

  static DailyMealsQuery _instantiate(DecodingData data) {
    return DailyMealsQuery(date: data.dec(_f$date));
  }

  @override
  final Function instantiate = _instantiate;

  static DailyMealsQuery fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DailyMealsQuery>(map);
  }

  static DailyMealsQuery fromJson(String json) {
    return ensureInitialized().decodeJson<DailyMealsQuery>(json);
  }
}

mixin DailyMealsQueryMappable {
  String toJson() {
    return DailyMealsQueryMapper.ensureInitialized()
        .encodeJson<DailyMealsQuery>(this as DailyMealsQuery);
  }

  Map<String, dynamic> toMap() {
    return DailyMealsQueryMapper.ensureInitialized().encodeMap<DailyMealsQuery>(
      this as DailyMealsQuery,
    );
  }

  DailyMealsQueryCopyWith<DailyMealsQuery, DailyMealsQuery, DailyMealsQuery>
  get copyWith =>
      _DailyMealsQueryCopyWithImpl<DailyMealsQuery, DailyMealsQuery>(
        this as DailyMealsQuery,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return DailyMealsQueryMapper.ensureInitialized().stringifyValue(
      this as DailyMealsQuery,
    );
  }

  @override
  bool operator ==(Object other) {
    return DailyMealsQueryMapper.ensureInitialized().equalsValue(
      this as DailyMealsQuery,
      other,
    );
  }

  @override
  int get hashCode {
    return DailyMealsQueryMapper.ensureInitialized().hashValue(
      this as DailyMealsQuery,
    );
  }
}

extension DailyMealsQueryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DailyMealsQuery, $Out> {
  DailyMealsQueryCopyWith<$R, DailyMealsQuery, $Out> get $asDailyMealsQuery =>
      $base.as((v, t, t2) => _DailyMealsQueryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DailyMealsQueryCopyWith<$R, $In extends DailyMealsQuery, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? date});
  DailyMealsQueryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _DailyMealsQueryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DailyMealsQuery, $Out>
    implements DailyMealsQueryCopyWith<$R, DailyMealsQuery, $Out> {
  _DailyMealsQueryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DailyMealsQuery> $mapper =
      DailyMealsQueryMapper.ensureInitialized();
  @override
  $R call({String? date}) =>
      $apply(FieldCopyWithData({if (date != null) #date: date}));
  @override
  DailyMealsQuery $make(CopyWithData data) =>
      DailyMealsQuery(date: data.get(#date, or: $value.date));

  @override
  DailyMealsQueryCopyWith<$R2, DailyMealsQuery, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DailyMealsQueryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

