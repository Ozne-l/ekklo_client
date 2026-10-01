// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'nutrition_plan.dart';

class EkkloNutritionPlanMapper extends ClassMapperBase<EkkloNutritionPlan> {
  EkkloNutritionPlanMapper._();

  static EkkloNutritionPlanMapper? _instance;
  static EkkloNutritionPlanMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloNutritionPlanMapper._());
      EkkloNutritionPlanStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloNutritionPlan';

  static String _$id(EkkloNutritionPlan v) => v.id;
  static const Field<EkkloNutritionPlan, String> _f$id = Field('id', _$id);
  static String _$name(EkkloNutritionPlan v) => v.name;
  static const Field<EkkloNutritionPlan, String> _f$name = Field(
    'name',
    _$name,
  );
  static EkkloNutritionPlanStatus? _$status(EkkloNutritionPlan v) => v.status;
  static const Field<EkkloNutritionPlan, EkkloNutritionPlanStatus> _f$status =
      Field('status', _$status, opt: true);
  static String? _$coachId(EkkloNutritionPlan v) => v.coachId;
  static const Field<EkkloNutritionPlan, String> _f$coachId = Field(
    'coachId',
    _$coachId,
    key: r'coach_id',
    opt: true,
  );
  static double? _$defaultMaxCalories(EkkloNutritionPlan v) =>
      v.defaultMaxCalories;
  static const Field<EkkloNutritionPlan, double> _f$defaultMaxCalories = Field(
    'defaultMaxCalories',
    _$defaultMaxCalories,
    key: r'default_max_calories',
    opt: true,
  );
  static double? _$defaultMaxProteins(EkkloNutritionPlan v) =>
      v.defaultMaxProteins;
  static const Field<EkkloNutritionPlan, double> _f$defaultMaxProteins = Field(
    'defaultMaxProteins',
    _$defaultMaxProteins,
    key: r'default_max_proteins',
    opt: true,
  );
  static double? _$defaultMaxCarbs(EkkloNutritionPlan v) => v.defaultMaxCarbs;
  static const Field<EkkloNutritionPlan, double> _f$defaultMaxCarbs = Field(
    'defaultMaxCarbs',
    _$defaultMaxCarbs,
    key: r'default_max_carbs',
    opt: true,
  );
  static double? _$defaultMaxFats(EkkloNutritionPlan v) => v.defaultMaxFats;
  static const Field<EkkloNutritionPlan, double> _f$defaultMaxFats = Field(
    'defaultMaxFats',
    _$defaultMaxFats,
    key: r'default_max_fats',
    opt: true,
  );
  static int? _$mealPlansCount(EkkloNutritionPlan v) => v.mealPlansCount;
  static const Field<EkkloNutritionPlan, int> _f$mealPlansCount = Field(
    'mealPlansCount',
    _$mealPlansCount,
    key: r'meal_plans_count',
    opt: true,
  );
  static DateTime? _$createdAt(EkkloNutritionPlan v) => v.createdAt;
  static const Field<EkkloNutritionPlan, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
    opt: true,
  );
  static DateTime? _$updatedAt(EkkloNutritionPlan v) => v.updatedAt;
  static const Field<EkkloNutritionPlan, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
    opt: true,
  );

  @override
  final MappableFields<EkkloNutritionPlan> fields = const {
    #id: _f$id,
    #name: _f$name,
    #status: _f$status,
    #coachId: _f$coachId,
    #defaultMaxCalories: _f$defaultMaxCalories,
    #defaultMaxProteins: _f$defaultMaxProteins,
    #defaultMaxCarbs: _f$defaultMaxCarbs,
    #defaultMaxFats: _f$defaultMaxFats,
    #mealPlansCount: _f$mealPlansCount,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
  };
  @override
  final bool ignoreNull = true;

  static EkkloNutritionPlan _instantiate(DecodingData data) {
    return EkkloNutritionPlan(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      status: data.dec(_f$status),
      coachId: data.dec(_f$coachId),
      defaultMaxCalories: data.dec(_f$defaultMaxCalories),
      defaultMaxProteins: data.dec(_f$defaultMaxProteins),
      defaultMaxCarbs: data.dec(_f$defaultMaxCarbs),
      defaultMaxFats: data.dec(_f$defaultMaxFats),
      mealPlansCount: data.dec(_f$mealPlansCount),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloNutritionPlan fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloNutritionPlan>(map);
  }

  static EkkloNutritionPlan fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloNutritionPlan>(json);
  }
}

mixin EkkloNutritionPlanMappable {
  String toJson() {
    return EkkloNutritionPlanMapper.ensureInitialized()
        .encodeJson<EkkloNutritionPlan>(this as EkkloNutritionPlan);
  }

  Map<String, dynamic> toMap() {
    return EkkloNutritionPlanMapper.ensureInitialized()
        .encodeMap<EkkloNutritionPlan>(this as EkkloNutritionPlan);
  }

  EkkloNutritionPlanCopyWith<
    EkkloNutritionPlan,
    EkkloNutritionPlan,
    EkkloNutritionPlan
  >
  get copyWith =>
      _EkkloNutritionPlanCopyWithImpl<EkkloNutritionPlan, EkkloNutritionPlan>(
        this as EkkloNutritionPlan,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloNutritionPlanMapper.ensureInitialized().stringifyValue(
      this as EkkloNutritionPlan,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloNutritionPlanMapper.ensureInitialized().equalsValue(
      this as EkkloNutritionPlan,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloNutritionPlanMapper.ensureInitialized().hashValue(
      this as EkkloNutritionPlan,
    );
  }
}

extension EkkloNutritionPlanValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloNutritionPlan, $Out> {
  EkkloNutritionPlanCopyWith<$R, EkkloNutritionPlan, $Out>
  get $asEkkloNutritionPlan => $base.as(
    (v, t, t2) => _EkkloNutritionPlanCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class EkkloNutritionPlanCopyWith<
  $R,
  $In extends EkkloNutritionPlan,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    String? name,
    EkkloNutritionPlanStatus? status,
    String? coachId,
    double? defaultMaxCalories,
    double? defaultMaxProteins,
    double? defaultMaxCarbs,
    double? defaultMaxFats,
    int? mealPlansCount,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  EkkloNutritionPlanCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EkkloNutritionPlanCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloNutritionPlan, $Out>
    implements EkkloNutritionPlanCopyWith<$R, EkkloNutritionPlan, $Out> {
  _EkkloNutritionPlanCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloNutritionPlan> $mapper =
      EkkloNutritionPlanMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    String? name,
    Object? status = $none,
    Object? coachId = $none,
    Object? defaultMaxCalories = $none,
    Object? defaultMaxProteins = $none,
    Object? defaultMaxCarbs = $none,
    Object? defaultMaxFats = $none,
    Object? mealPlansCount = $none,
    Object? createdAt = $none,
    Object? updatedAt = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (status != $none) #status: status,
      if (coachId != $none) #coachId: coachId,
      if (defaultMaxCalories != $none) #defaultMaxCalories: defaultMaxCalories,
      if (defaultMaxProteins != $none) #defaultMaxProteins: defaultMaxProteins,
      if (defaultMaxCarbs != $none) #defaultMaxCarbs: defaultMaxCarbs,
      if (defaultMaxFats != $none) #defaultMaxFats: defaultMaxFats,
      if (mealPlansCount != $none) #mealPlansCount: mealPlansCount,
      if (createdAt != $none) #createdAt: createdAt,
      if (updatedAt != $none) #updatedAt: updatedAt,
    }),
  );
  @override
  EkkloNutritionPlan $make(CopyWithData data) => EkkloNutritionPlan(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    status: data.get(#status, or: $value.status),
    coachId: data.get(#coachId, or: $value.coachId),
    defaultMaxCalories: data.get(
      #defaultMaxCalories,
      or: $value.defaultMaxCalories,
    ),
    defaultMaxProteins: data.get(
      #defaultMaxProteins,
      or: $value.defaultMaxProteins,
    ),
    defaultMaxCarbs: data.get(#defaultMaxCarbs, or: $value.defaultMaxCarbs),
    defaultMaxFats: data.get(#defaultMaxFats, or: $value.defaultMaxFats),
    mealPlansCount: data.get(#mealPlansCount, or: $value.mealPlansCount),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
  );

  @override
  EkkloNutritionPlanCopyWith<$R2, EkkloNutritionPlan, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloNutritionPlanCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

