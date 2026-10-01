// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'nutrition_plans_query.dart';

class NutritionPlansQueryMapper extends ClassMapperBase<NutritionPlansQuery> {
  NutritionPlansQueryMapper._();

  static NutritionPlansQueryMapper? _instance;
  static NutritionPlansQueryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NutritionPlansQueryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'NutritionPlansQuery';

  static bool _$light(NutritionPlansQuery v) => v.light;
  static const Field<NutritionPlansQuery, bool> _f$light = Field(
    'light',
    _$light,
    opt: true,
    def: true,
  );

  @override
  final MappableFields<NutritionPlansQuery> fields = const {#light: _f$light};
  @override
  final bool ignoreNull = true;

  static NutritionPlansQuery _instantiate(DecodingData data) {
    return NutritionPlansQuery(light: data.dec(_f$light));
  }

  @override
  final Function instantiate = _instantiate;

  static NutritionPlansQuery fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NutritionPlansQuery>(map);
  }

  static NutritionPlansQuery fromJson(String json) {
    return ensureInitialized().decodeJson<NutritionPlansQuery>(json);
  }
}

mixin NutritionPlansQueryMappable {
  String toJson() {
    return NutritionPlansQueryMapper.ensureInitialized()
        .encodeJson<NutritionPlansQuery>(this as NutritionPlansQuery);
  }

  Map<String, dynamic> toMap() {
    return NutritionPlansQueryMapper.ensureInitialized()
        .encodeMap<NutritionPlansQuery>(this as NutritionPlansQuery);
  }

  NutritionPlansQueryCopyWith<
    NutritionPlansQuery,
    NutritionPlansQuery,
    NutritionPlansQuery
  >
  get copyWith =>
      _NutritionPlansQueryCopyWithImpl<
        NutritionPlansQuery,
        NutritionPlansQuery
      >(this as NutritionPlansQuery, $identity, $identity);
  @override
  String toString() {
    return NutritionPlansQueryMapper.ensureInitialized().stringifyValue(
      this as NutritionPlansQuery,
    );
  }

  @override
  bool operator ==(Object other) {
    return NutritionPlansQueryMapper.ensureInitialized().equalsValue(
      this as NutritionPlansQuery,
      other,
    );
  }

  @override
  int get hashCode {
    return NutritionPlansQueryMapper.ensureInitialized().hashValue(
      this as NutritionPlansQuery,
    );
  }
}

extension NutritionPlansQueryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NutritionPlansQuery, $Out> {
  NutritionPlansQueryCopyWith<$R, NutritionPlansQuery, $Out>
  get $asNutritionPlansQuery => $base.as(
    (v, t, t2) => _NutritionPlansQueryCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class NutritionPlansQueryCopyWith<
  $R,
  $In extends NutritionPlansQuery,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? light});
  NutritionPlansQueryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _NutritionPlansQueryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NutritionPlansQuery, $Out>
    implements NutritionPlansQueryCopyWith<$R, NutritionPlansQuery, $Out> {
  _NutritionPlansQueryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NutritionPlansQuery> $mapper =
      NutritionPlansQueryMapper.ensureInitialized();
  @override
  $R call({bool? light}) =>
      $apply(FieldCopyWithData({if (light != null) #light: light}));
  @override
  NutritionPlansQuery $make(CopyWithData data) =>
      NutritionPlansQuery(light: data.get(#light, or: $value.light));

  @override
  NutritionPlansQueryCopyWith<$R2, NutritionPlansQuery, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _NutritionPlansQueryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

