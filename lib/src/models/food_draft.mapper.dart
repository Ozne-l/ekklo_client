// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'food_draft.dart';

class EkkloFoodDraftMapper extends ClassMapperBase<EkkloFoodDraft> {
  EkkloFoodDraftMapper._();

  static EkkloFoodDraftMapper? _instance;
  static EkkloFoodDraftMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloFoodDraftMapper._());
      EkkloFoodCategoryMapper.ensureInitialized();
      EkkloQuantityTypeMapper.ensureInitialized();
      EkkloFoodUnitDraftMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloFoodDraft';

  static String _$name(EkkloFoodDraft v) => v.name;
  static const Field<EkkloFoodDraft, String> _f$name = Field('name', _$name);
  static EkkloFoodCategory _$category(EkkloFoodDraft v) => v.category;
  static const Field<EkkloFoodDraft, EkkloFoodCategory> _f$category = Field(
    'category',
    _$category,
  );
  static double _$calories(EkkloFoodDraft v) => v.calories;
  static const Field<EkkloFoodDraft, double> _f$calories = Field(
    'calories',
    _$calories,
  );
  static double _$proteins(EkkloFoodDraft v) => v.proteins;
  static const Field<EkkloFoodDraft, double> _f$proteins = Field(
    'proteins',
    _$proteins,
  );
  static double _$carbs(EkkloFoodDraft v) => v.carbs;
  static const Field<EkkloFoodDraft, double> _f$carbs = Field('carbs', _$carbs);
  static double _$fats(EkkloFoodDraft v) => v.fats;
  static const Field<EkkloFoodDraft, double> _f$fats = Field('fats', _$fats);
  static double _$sugar(EkkloFoodDraft v) => v.sugar;
  static const Field<EkkloFoodDraft, double> _f$sugar = Field('sugar', _$sugar);
  static double _$sodiumMilligrams(EkkloFoodDraft v) => v.sodiumMilligrams;
  static const Field<EkkloFoodDraft, double> _f$sodiumMilligrams = Field(
    'sodiumMilligrams',
    _$sodiumMilligrams,
    key: r'sodium',
  );
  static double _$portion(EkkloFoodDraft v) => v.portion;
  static const Field<EkkloFoodDraft, double> _f$portion = Field(
    'portion',
    _$portion,
    opt: true,
    def: 100,
  );
  static EkkloQuantityType _$quantityType(EkkloFoodDraft v) => v.quantityType;
  static const Field<EkkloFoodDraft, EkkloQuantityType> _f$quantityType = Field(
    'quantityType',
    _$quantityType,
    key: r'quantity_type',
    opt: true,
    def: EkkloQuantityType.grams,
  );
  static double? _$fiber(EkkloFoodDraft v) => v.fiber;
  static const Field<EkkloFoodDraft, double> _f$fiber = Field(
    'fiber',
    _$fiber,
    opt: true,
  );
  static String? _$brands(EkkloFoodDraft v) => v.brands;
  static const Field<EkkloFoodDraft, String> _f$brands = Field(
    'brands',
    _$brands,
    opt: true,
  );
  static String? _$code(EkkloFoodDraft v) => v.code;
  static const Field<EkkloFoodDraft, String> _f$code = Field(
    'code',
    _$code,
    opt: true,
  );
  static String? _$nutriscoreGrade(EkkloFoodDraft v) => v.nutriscoreGrade;
  static const Field<EkkloFoodDraft, String> _f$nutriscoreGrade = Field(
    'nutriscoreGrade',
    _$nutriscoreGrade,
    key: r'nutriscore_grade',
    opt: true,
  );
  static List<EkkloFoodUnitDraft>? _$foodUnits(EkkloFoodDraft v) => v.foodUnits;
  static const Field<EkkloFoodDraft, List<EkkloFoodUnitDraft>> _f$foodUnits =
      Field('foodUnits', _$foodUnits, key: r'food_units', opt: true);

  @override
  final MappableFields<EkkloFoodDraft> fields = const {
    #name: _f$name,
    #category: _f$category,
    #calories: _f$calories,
    #proteins: _f$proteins,
    #carbs: _f$carbs,
    #fats: _f$fats,
    #sugar: _f$sugar,
    #sodiumMilligrams: _f$sodiumMilligrams,
    #portion: _f$portion,
    #quantityType: _f$quantityType,
    #fiber: _f$fiber,
    #brands: _f$brands,
    #code: _f$code,
    #nutriscoreGrade: _f$nutriscoreGrade,
    #foodUnits: _f$foodUnits,
  };
  @override
  final bool ignoreNull = true;

  static EkkloFoodDraft _instantiate(DecodingData data) {
    return EkkloFoodDraft(
      name: data.dec(_f$name),
      category: data.dec(_f$category),
      calories: data.dec(_f$calories),
      proteins: data.dec(_f$proteins),
      carbs: data.dec(_f$carbs),
      fats: data.dec(_f$fats),
      sugar: data.dec(_f$sugar),
      sodiumMilligrams: data.dec(_f$sodiumMilligrams),
      portion: data.dec(_f$portion),
      quantityType: data.dec(_f$quantityType),
      fiber: data.dec(_f$fiber),
      brands: data.dec(_f$brands),
      code: data.dec(_f$code),
      nutriscoreGrade: data.dec(_f$nutriscoreGrade),
      foodUnits: data.dec(_f$foodUnits),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloFoodDraft fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloFoodDraft>(map);
  }

  static EkkloFoodDraft fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloFoodDraft>(json);
  }
}

mixin EkkloFoodDraftMappable {
  String toJson() {
    return EkkloFoodDraftMapper.ensureInitialized().encodeJson<EkkloFoodDraft>(
      this as EkkloFoodDraft,
    );
  }

  Map<String, dynamic> toMap() {
    return EkkloFoodDraftMapper.ensureInitialized().encodeMap<EkkloFoodDraft>(
      this as EkkloFoodDraft,
    );
  }

  EkkloFoodDraftCopyWith<EkkloFoodDraft, EkkloFoodDraft, EkkloFoodDraft>
  get copyWith => _EkkloFoodDraftCopyWithImpl<EkkloFoodDraft, EkkloFoodDraft>(
    this as EkkloFoodDraft,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return EkkloFoodDraftMapper.ensureInitialized().stringifyValue(
      this as EkkloFoodDraft,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloFoodDraftMapper.ensureInitialized().equalsValue(
      this as EkkloFoodDraft,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloFoodDraftMapper.ensureInitialized().hashValue(
      this as EkkloFoodDraft,
    );
  }
}

extension EkkloFoodDraftValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloFoodDraft, $Out> {
  EkkloFoodDraftCopyWith<$R, EkkloFoodDraft, $Out> get $asEkkloFoodDraft =>
      $base.as((v, t, t2) => _EkkloFoodDraftCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EkkloFoodDraftCopyWith<$R, $In extends EkkloFoodDraft, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    EkkloFoodUnitDraft,
    EkkloFoodUnitDraftCopyWith<$R, EkkloFoodUnitDraft, EkkloFoodUnitDraft>
  >?
  get foodUnits;
  $R call({
    String? name,
    EkkloFoodCategory? category,
    double? calories,
    double? proteins,
    double? carbs,
    double? fats,
    double? sugar,
    double? sodiumMilligrams,
    double? portion,
    EkkloQuantityType? quantityType,
    double? fiber,
    String? brands,
    String? code,
    String? nutriscoreGrade,
    List<EkkloFoodUnitDraft>? foodUnits,
  });
  EkkloFoodDraftCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EkkloFoodDraftCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloFoodDraft, $Out>
    implements EkkloFoodDraftCopyWith<$R, EkkloFoodDraft, $Out> {
  _EkkloFoodDraftCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloFoodDraft> $mapper =
      EkkloFoodDraftMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    EkkloFoodUnitDraft,
    EkkloFoodUnitDraftCopyWith<$R, EkkloFoodUnitDraft, EkkloFoodUnitDraft>
  >?
  get foodUnits => $value.foodUnits != null
      ? ListCopyWith(
          $value.foodUnits!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(foodUnits: v),
        )
      : null;
  @override
  $R call({
    String? name,
    EkkloFoodCategory? category,
    double? calories,
    double? proteins,
    double? carbs,
    double? fats,
    double? sugar,
    double? sodiumMilligrams,
    double? portion,
    EkkloQuantityType? quantityType,
    Object? fiber = $none,
    Object? brands = $none,
    Object? code = $none,
    Object? nutriscoreGrade = $none,
    Object? foodUnits = $none,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (category != null) #category: category,
      if (calories != null) #calories: calories,
      if (proteins != null) #proteins: proteins,
      if (carbs != null) #carbs: carbs,
      if (fats != null) #fats: fats,
      if (sugar != null) #sugar: sugar,
      if (sodiumMilligrams != null) #sodiumMilligrams: sodiumMilligrams,
      if (portion != null) #portion: portion,
      if (quantityType != null) #quantityType: quantityType,
      if (fiber != $none) #fiber: fiber,
      if (brands != $none) #brands: brands,
      if (code != $none) #code: code,
      if (nutriscoreGrade != $none) #nutriscoreGrade: nutriscoreGrade,
      if (foodUnits != $none) #foodUnits: foodUnits,
    }),
  );
  @override
  EkkloFoodDraft $make(CopyWithData data) => EkkloFoodDraft(
    name: data.get(#name, or: $value.name),
    category: data.get(#category, or: $value.category),
    calories: data.get(#calories, or: $value.calories),
    proteins: data.get(#proteins, or: $value.proteins),
    carbs: data.get(#carbs, or: $value.carbs),
    fats: data.get(#fats, or: $value.fats),
    sugar: data.get(#sugar, or: $value.sugar),
    sodiumMilligrams: data.get(#sodiumMilligrams, or: $value.sodiumMilligrams),
    portion: data.get(#portion, or: $value.portion),
    quantityType: data.get(#quantityType, or: $value.quantityType),
    fiber: data.get(#fiber, or: $value.fiber),
    brands: data.get(#brands, or: $value.brands),
    code: data.get(#code, or: $value.code),
    nutriscoreGrade: data.get(#nutriscoreGrade, or: $value.nutriscoreGrade),
    foodUnits: data.get(#foodUnits, or: $value.foodUnits),
  );

  @override
  EkkloFoodDraftCopyWith<$R2, EkkloFoodDraft, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloFoodDraftCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

