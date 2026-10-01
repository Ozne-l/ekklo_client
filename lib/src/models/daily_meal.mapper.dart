// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'daily_meal.dart';

class EkkloDailyMealMapper extends ClassMapperBase<EkkloDailyMeal> {
  EkkloDailyMealMapper._();

  static EkkloDailyMealMapper? _instance;
  static EkkloDailyMealMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloDailyMealMapper._());
      EkkloDailyMealItemMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloDailyMeal';

  static String _$id(EkkloDailyMeal v) => v.id;
  static const Field<EkkloDailyMeal, String> _f$id = Field('id', _$id);
  static DateTime _$date(EkkloDailyMeal v) => v.date;
  static const Field<EkkloDailyMeal, DateTime> _f$date = Field(
    'date',
    _$date,
    hook: CalendarDateHook(),
  );
  static String _$name(EkkloDailyMeal v) => v.name;
  static const Field<EkkloDailyMeal, String> _f$name = Field('name', _$name);
  static int _$revision(EkkloDailyMeal v) => v.revision;
  static const Field<EkkloDailyMeal, int> _f$revision = Field(
    'revision',
    _$revision,
  );
  static int? _$order(EkkloDailyMeal v) => v.order;
  static const Field<EkkloDailyMeal, int> _f$order = Field(
    'order',
    _$order,
    opt: true,
  );
  static int? _$satietyLevel(EkkloDailyMeal v) => v.satietyLevel;
  static const Field<EkkloDailyMeal, int> _f$satietyLevel = Field(
    'satietyLevel',
    _$satietyLevel,
    key: r'satiety_level',
    opt: true,
  );
  static String? _$description(EkkloDailyMeal v) => v.description;
  static const Field<EkkloDailyMeal, String> _f$description = Field(
    'description',
    _$description,
    opt: true,
    hook: EmptyToNullHook(),
  );
  static String? _$photoUrl(EkkloDailyMeal v) => v.photoUrl;
  static const Field<EkkloDailyMeal, String> _f$photoUrl = Field(
    'photoUrl',
    _$photoUrl,
    key: r'photo_url',
    opt: true,
    hook: EmptyToNullHook(),
  );
  static double? _$manualCalories(EkkloDailyMeal v) => v.manualCalories;
  static const Field<EkkloDailyMeal, double> _f$manualCalories = Field(
    'manualCalories',
    _$manualCalories,
    key: r'manual_calories',
    opt: true,
  );
  static double? _$manualProteins(EkkloDailyMeal v) => v.manualProteins;
  static const Field<EkkloDailyMeal, double> _f$manualProteins = Field(
    'manualProteins',
    _$manualProteins,
    key: r'manual_proteins',
    opt: true,
  );
  static double? _$manualCarbs(EkkloDailyMeal v) => v.manualCarbs;
  static const Field<EkkloDailyMeal, double> _f$manualCarbs = Field(
    'manualCarbs',
    _$manualCarbs,
    key: r'manual_carbs',
    opt: true,
  );
  static double? _$manualFats(EkkloDailyMeal v) => v.manualFats;
  static const Field<EkkloDailyMeal, double> _f$manualFats = Field(
    'manualFats',
    _$manualFats,
    key: r'manual_fats',
    opt: true,
  );
  static List<EkkloDailyMealItem> _$items(EkkloDailyMeal v) => v.items;
  static const Field<EkkloDailyMeal, List<EkkloDailyMealItem>> _f$items = Field(
    'items',
    _$items,
    key: r'daily_meal_items',
    opt: true,
    def: const [],
    hook: NullToEmptyListHook(),
  );
  static DateTime? _$createdAt(EkkloDailyMeal v) => v.createdAt;
  static const Field<EkkloDailyMeal, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
    opt: true,
  );
  static DateTime? _$updatedAt(EkkloDailyMeal v) => v.updatedAt;
  static const Field<EkkloDailyMeal, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
    opt: true,
  );

  @override
  final MappableFields<EkkloDailyMeal> fields = const {
    #id: _f$id,
    #date: _f$date,
    #name: _f$name,
    #revision: _f$revision,
    #order: _f$order,
    #satietyLevel: _f$satietyLevel,
    #description: _f$description,
    #photoUrl: _f$photoUrl,
    #manualCalories: _f$manualCalories,
    #manualProteins: _f$manualProteins,
    #manualCarbs: _f$manualCarbs,
    #manualFats: _f$manualFats,
    #items: _f$items,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
  };
  @override
  final bool ignoreNull = true;

  static EkkloDailyMeal _instantiate(DecodingData data) {
    return EkkloDailyMeal(
      id: data.dec(_f$id),
      date: data.dec(_f$date),
      name: data.dec(_f$name),
      revision: data.dec(_f$revision),
      order: data.dec(_f$order),
      satietyLevel: data.dec(_f$satietyLevel),
      description: data.dec(_f$description),
      photoUrl: data.dec(_f$photoUrl),
      manualCalories: data.dec(_f$manualCalories),
      manualProteins: data.dec(_f$manualProteins),
      manualCarbs: data.dec(_f$manualCarbs),
      manualFats: data.dec(_f$manualFats),
      items: data.dec(_f$items),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloDailyMeal fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloDailyMeal>(map);
  }

  static EkkloDailyMeal fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloDailyMeal>(json);
  }
}

mixin EkkloDailyMealMappable {
  String toJson() {
    return EkkloDailyMealMapper.ensureInitialized().encodeJson<EkkloDailyMeal>(
      this as EkkloDailyMeal,
    );
  }

  Map<String, dynamic> toMap() {
    return EkkloDailyMealMapper.ensureInitialized().encodeMap<EkkloDailyMeal>(
      this as EkkloDailyMeal,
    );
  }

  EkkloDailyMealCopyWith<EkkloDailyMeal, EkkloDailyMeal, EkkloDailyMeal>
  get copyWith => _EkkloDailyMealCopyWithImpl<EkkloDailyMeal, EkkloDailyMeal>(
    this as EkkloDailyMeal,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return EkkloDailyMealMapper.ensureInitialized().stringifyValue(
      this as EkkloDailyMeal,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloDailyMealMapper.ensureInitialized().equalsValue(
      this as EkkloDailyMeal,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloDailyMealMapper.ensureInitialized().hashValue(
      this as EkkloDailyMeal,
    );
  }
}

extension EkkloDailyMealValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloDailyMeal, $Out> {
  EkkloDailyMealCopyWith<$R, EkkloDailyMeal, $Out> get $asEkkloDailyMeal =>
      $base.as((v, t, t2) => _EkkloDailyMealCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EkkloDailyMealCopyWith<$R, $In extends EkkloDailyMeal, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    EkkloDailyMealItem,
    EkkloDailyMealItemCopyWith<$R, EkkloDailyMealItem, EkkloDailyMealItem>
  >
  get items;
  $R call({
    String? id,
    DateTime? date,
    String? name,
    int? revision,
    int? order,
    int? satietyLevel,
    String? description,
    String? photoUrl,
    double? manualCalories,
    double? manualProteins,
    double? manualCarbs,
    double? manualFats,
    List<EkkloDailyMealItem>? items,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  EkkloDailyMealCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EkkloDailyMealCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloDailyMeal, $Out>
    implements EkkloDailyMealCopyWith<$R, EkkloDailyMeal, $Out> {
  _EkkloDailyMealCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloDailyMeal> $mapper =
      EkkloDailyMealMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    EkkloDailyMealItem,
    EkkloDailyMealItemCopyWith<$R, EkkloDailyMealItem, EkkloDailyMealItem>
  >
  get items => ListCopyWith(
    $value.items,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(items: v),
  );
  @override
  $R call({
    String? id,
    DateTime? date,
    String? name,
    int? revision,
    Object? order = $none,
    Object? satietyLevel = $none,
    Object? description = $none,
    Object? photoUrl = $none,
    Object? manualCalories = $none,
    Object? manualProteins = $none,
    Object? manualCarbs = $none,
    Object? manualFats = $none,
    List<EkkloDailyMealItem>? items,
    Object? createdAt = $none,
    Object? updatedAt = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (date != null) #date: date,
      if (name != null) #name: name,
      if (revision != null) #revision: revision,
      if (order != $none) #order: order,
      if (satietyLevel != $none) #satietyLevel: satietyLevel,
      if (description != $none) #description: description,
      if (photoUrl != $none) #photoUrl: photoUrl,
      if (manualCalories != $none) #manualCalories: manualCalories,
      if (manualProteins != $none) #manualProteins: manualProteins,
      if (manualCarbs != $none) #manualCarbs: manualCarbs,
      if (manualFats != $none) #manualFats: manualFats,
      if (items != null) #items: items,
      if (createdAt != $none) #createdAt: createdAt,
      if (updatedAt != $none) #updatedAt: updatedAt,
    }),
  );
  @override
  EkkloDailyMeal $make(CopyWithData data) => EkkloDailyMeal(
    id: data.get(#id, or: $value.id),
    date: data.get(#date, or: $value.date),
    name: data.get(#name, or: $value.name),
    revision: data.get(#revision, or: $value.revision),
    order: data.get(#order, or: $value.order),
    satietyLevel: data.get(#satietyLevel, or: $value.satietyLevel),
    description: data.get(#description, or: $value.description),
    photoUrl: data.get(#photoUrl, or: $value.photoUrl),
    manualCalories: data.get(#manualCalories, or: $value.manualCalories),
    manualProteins: data.get(#manualProteins, or: $value.manualProteins),
    manualCarbs: data.get(#manualCarbs, or: $value.manualCarbs),
    manualFats: data.get(#manualFats, or: $value.manualFats),
    items: data.get(#items, or: $value.items),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
  );

  @override
  EkkloDailyMealCopyWith<$R2, EkkloDailyMeal, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloDailyMealCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

