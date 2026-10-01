// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'food.dart';

class EkkloFoodMapper extends ClassMapperBase<EkkloFood> {
  EkkloFoodMapper._();

  static EkkloFoodMapper? _instance;
  static EkkloFoodMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloFoodMapper._());
      EkkloQuantityTypeMapper.ensureInitialized();
      EkkloFoodCategoryMapper.ensureInitialized();
      EkkloFoodUnitMapper.ensureInitialized();
      EkkloFoodSourceMapper.ensureInitialized();
      EkkloPortionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloFood';

  static String _$id(EkkloFood v) => v.id;
  static const Field<EkkloFood, String> _f$id = Field('id', _$id);
  static String _$name(EkkloFood v) => v.name;
  static const Field<EkkloFood, String> _f$name = Field('name', _$name);
  static double _$portion(EkkloFood v) => v.portion;
  static const Field<EkkloFood, double> _f$portion = Field(
    'portion',
    _$portion,
  );
  static EkkloQuantityType _$quantityType(EkkloFood v) => v.quantityType;
  static const Field<EkkloFood, EkkloQuantityType> _f$quantityType = Field(
    'quantityType',
    _$quantityType,
    key: r'quantity_type',
  );
  static double _$calories(EkkloFood v) => v.calories;
  static const Field<EkkloFood, double> _f$calories = Field(
    'calories',
    _$calories,
  );
  static double _$proteins(EkkloFood v) => v.proteins;
  static const Field<EkkloFood, double> _f$proteins = Field(
    'proteins',
    _$proteins,
  );
  static double _$carbs(EkkloFood v) => v.carbs;
  static const Field<EkkloFood, double> _f$carbs = Field('carbs', _$carbs);
  static double _$fats(EkkloFood v) => v.fats;
  static const Field<EkkloFood, double> _f$fats = Field('fats', _$fats);
  static double _$fiber(EkkloFood v) => v.fiber;
  static const Field<EkkloFood, double> _f$fiber = Field('fiber', _$fiber);
  static double _$sugar(EkkloFood v) => v.sugar;
  static const Field<EkkloFood, double> _f$sugar = Field('sugar', _$sugar);
  static double _$sodiumMilligrams(EkkloFood v) => v.sodiumMilligrams;
  static const Field<EkkloFood, double> _f$sodiumMilligrams = Field(
    'sodiumMilligrams',
    _$sodiumMilligrams,
    key: r'sodium',
  );
  static EkkloFoodCategory _$category(EkkloFood v) => v.category;
  static const Field<EkkloFood, EkkloFoodCategory> _f$category = Field(
    'category',
    _$category,
  );
  static String? _$brands(EkkloFood v) => v.brands;
  static const Field<EkkloFood, String> _f$brands = Field(
    'brands',
    _$brands,
    opt: true,
    hook: EmptyToNullHook(),
  );
  static String? _$code(EkkloFood v) => v.code;
  static const Field<EkkloFood, String> _f$code = Field(
    'code',
    _$code,
    opt: true,
    hook: EmptyToNullHook(),
  );
  static String? _$nutriscoreGrade(EkkloFood v) => v.nutriscoreGrade;
  static const Field<EkkloFood, String> _f$nutriscoreGrade = Field(
    'nutriscoreGrade',
    _$nutriscoreGrade,
    key: r'nutriscore_grade',
    opt: true,
    hook: EmptyToNullHook(),
  );
  static List<EkkloFoodUnit> _$foodUnits(EkkloFood v) => v.foodUnits;
  static const Field<EkkloFood, List<EkkloFoodUnit>> _f$foodUnits = Field(
    'foodUnits',
    _$foodUnits,
    key: r'food_units',
    opt: true,
    def: const [],
    hook: NullToEmptyListHook(),
  );
  static EkkloFoodSource? _$source(EkkloFood v) => v.source;
  static const Field<EkkloFood, EkkloFoodSource> _f$source = Field(
    'source',
    _$source,
    key: r'from',
    opt: true,
    hook: EmptyToNullHook(),
  );
  static bool? _$isVerified(EkkloFood v) => v.isVerified;
  static const Field<EkkloFood, bool> _f$isVerified = Field(
    'isVerified',
    _$isVerified,
    key: r'is_verified',
    opt: true,
  );
  static bool? _$isFavorite(EkkloFood v) => v.isFavorite;
  static const Field<EkkloFood, bool> _f$isFavorite = Field(
    'isFavorite',
    _$isFavorite,
    key: r'is_favorite',
    opt: true,
  );
  static EkkloPortion? _$lastUsedPortion(EkkloFood v) => v.lastUsedPortion;
  static const Field<EkkloFood, EkkloPortion> _f$lastUsedPortion = Field(
    'lastUsedPortion',
    _$lastUsedPortion,
    key: r'last_used_portion',
    opt: true,
  );
  static DateTime? _$createdAt(EkkloFood v) => v.createdAt;
  static const Field<EkkloFood, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
    opt: true,
  );
  static DateTime? _$updatedAt(EkkloFood v) => v.updatedAt;
  static const Field<EkkloFood, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
    opt: true,
  );

  @override
  final MappableFields<EkkloFood> fields = const {
    #id: _f$id,
    #name: _f$name,
    #portion: _f$portion,
    #quantityType: _f$quantityType,
    #calories: _f$calories,
    #proteins: _f$proteins,
    #carbs: _f$carbs,
    #fats: _f$fats,
    #fiber: _f$fiber,
    #sugar: _f$sugar,
    #sodiumMilligrams: _f$sodiumMilligrams,
    #category: _f$category,
    #brands: _f$brands,
    #code: _f$code,
    #nutriscoreGrade: _f$nutriscoreGrade,
    #foodUnits: _f$foodUnits,
    #source: _f$source,
    #isVerified: _f$isVerified,
    #isFavorite: _f$isFavorite,
    #lastUsedPortion: _f$lastUsedPortion,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
  };
  @override
  final bool ignoreNull = true;

  static EkkloFood _instantiate(DecodingData data) {
    return EkkloFood(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      portion: data.dec(_f$portion),
      quantityType: data.dec(_f$quantityType),
      calories: data.dec(_f$calories),
      proteins: data.dec(_f$proteins),
      carbs: data.dec(_f$carbs),
      fats: data.dec(_f$fats),
      fiber: data.dec(_f$fiber),
      sugar: data.dec(_f$sugar),
      sodiumMilligrams: data.dec(_f$sodiumMilligrams),
      category: data.dec(_f$category),
      brands: data.dec(_f$brands),
      code: data.dec(_f$code),
      nutriscoreGrade: data.dec(_f$nutriscoreGrade),
      foodUnits: data.dec(_f$foodUnits),
      source: data.dec(_f$source),
      isVerified: data.dec(_f$isVerified),
      isFavorite: data.dec(_f$isFavorite),
      lastUsedPortion: data.dec(_f$lastUsedPortion),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloFood fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloFood>(map);
  }

  static EkkloFood fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloFood>(json);
  }
}

mixin EkkloFoodMappable {
  String toJson() {
    return EkkloFoodMapper.ensureInitialized().encodeJson<EkkloFood>(
      this as EkkloFood,
    );
  }

  Map<String, dynamic> toMap() {
    return EkkloFoodMapper.ensureInitialized().encodeMap<EkkloFood>(
      this as EkkloFood,
    );
  }

  EkkloFoodCopyWith<EkkloFood, EkkloFood, EkkloFood> get copyWith =>
      _EkkloFoodCopyWithImpl<EkkloFood, EkkloFood>(
        this as EkkloFood,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloFoodMapper.ensureInitialized().stringifyValue(
      this as EkkloFood,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloFoodMapper.ensureInitialized().equalsValue(
      this as EkkloFood,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloFoodMapper.ensureInitialized().hashValue(this as EkkloFood);
  }
}

extension EkkloFoodValueCopy<$R, $Out> on ObjectCopyWith<$R, EkkloFood, $Out> {
  EkkloFoodCopyWith<$R, EkkloFood, $Out> get $asEkkloFood =>
      $base.as((v, t, t2) => _EkkloFoodCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EkkloFoodCopyWith<$R, $In extends EkkloFood, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    EkkloFoodUnit,
    EkkloFoodUnitCopyWith<$R, EkkloFoodUnit, EkkloFoodUnit>
  >
  get foodUnits;
  EkkloPortionCopyWith<$R, EkkloPortion, EkkloPortion>? get lastUsedPortion;
  $R call({
    String? id,
    String? name,
    double? portion,
    EkkloQuantityType? quantityType,
    double? calories,
    double? proteins,
    double? carbs,
    double? fats,
    double? fiber,
    double? sugar,
    double? sodiumMilligrams,
    EkkloFoodCategory? category,
    String? brands,
    String? code,
    String? nutriscoreGrade,
    List<EkkloFoodUnit>? foodUnits,
    EkkloFoodSource? source,
    bool? isVerified,
    bool? isFavorite,
    EkkloPortion? lastUsedPortion,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  EkkloFoodCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EkkloFoodCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloFood, $Out>
    implements EkkloFoodCopyWith<$R, EkkloFood, $Out> {
  _EkkloFoodCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloFood> $mapper =
      EkkloFoodMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    EkkloFoodUnit,
    EkkloFoodUnitCopyWith<$R, EkkloFoodUnit, EkkloFoodUnit>
  >
  get foodUnits => ListCopyWith(
    $value.foodUnits,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(foodUnits: v),
  );
  @override
  EkkloPortionCopyWith<$R, EkkloPortion, EkkloPortion>? get lastUsedPortion =>
      $value.lastUsedPortion?.copyWith.$chain((v) => call(lastUsedPortion: v));
  @override
  $R call({
    String? id,
    String? name,
    double? portion,
    EkkloQuantityType? quantityType,
    double? calories,
    double? proteins,
    double? carbs,
    double? fats,
    double? fiber,
    double? sugar,
    double? sodiumMilligrams,
    EkkloFoodCategory? category,
    Object? brands = $none,
    Object? code = $none,
    Object? nutriscoreGrade = $none,
    List<EkkloFoodUnit>? foodUnits,
    Object? source = $none,
    Object? isVerified = $none,
    Object? isFavorite = $none,
    Object? lastUsedPortion = $none,
    Object? createdAt = $none,
    Object? updatedAt = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (portion != null) #portion: portion,
      if (quantityType != null) #quantityType: quantityType,
      if (calories != null) #calories: calories,
      if (proteins != null) #proteins: proteins,
      if (carbs != null) #carbs: carbs,
      if (fats != null) #fats: fats,
      if (fiber != null) #fiber: fiber,
      if (sugar != null) #sugar: sugar,
      if (sodiumMilligrams != null) #sodiumMilligrams: sodiumMilligrams,
      if (category != null) #category: category,
      if (brands != $none) #brands: brands,
      if (code != $none) #code: code,
      if (nutriscoreGrade != $none) #nutriscoreGrade: nutriscoreGrade,
      if (foodUnits != null) #foodUnits: foodUnits,
      if (source != $none) #source: source,
      if (isVerified != $none) #isVerified: isVerified,
      if (isFavorite != $none) #isFavorite: isFavorite,
      if (lastUsedPortion != $none) #lastUsedPortion: lastUsedPortion,
      if (createdAt != $none) #createdAt: createdAt,
      if (updatedAt != $none) #updatedAt: updatedAt,
    }),
  );
  @override
  EkkloFood $make(CopyWithData data) => EkkloFood(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    portion: data.get(#portion, or: $value.portion),
    quantityType: data.get(#quantityType, or: $value.quantityType),
    calories: data.get(#calories, or: $value.calories),
    proteins: data.get(#proteins, or: $value.proteins),
    carbs: data.get(#carbs, or: $value.carbs),
    fats: data.get(#fats, or: $value.fats),
    fiber: data.get(#fiber, or: $value.fiber),
    sugar: data.get(#sugar, or: $value.sugar),
    sodiumMilligrams: data.get(#sodiumMilligrams, or: $value.sodiumMilligrams),
    category: data.get(#category, or: $value.category),
    brands: data.get(#brands, or: $value.brands),
    code: data.get(#code, or: $value.code),
    nutriscoreGrade: data.get(#nutriscoreGrade, or: $value.nutriscoreGrade),
    foodUnits: data.get(#foodUnits, or: $value.foodUnits),
    source: data.get(#source, or: $value.source),
    isVerified: data.get(#isVerified, or: $value.isVerified),
    isFavorite: data.get(#isFavorite, or: $value.isFavorite),
    lastUsedPortion: data.get(#lastUsedPortion, or: $value.lastUsedPortion),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
  );

  @override
  EkkloFoodCopyWith<$R2, EkkloFood, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloFoodCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

