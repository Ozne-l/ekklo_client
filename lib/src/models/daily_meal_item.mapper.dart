// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'daily_meal_item.dart';

class EkkloDailyMealItemMapper extends ClassMapperBase<EkkloDailyMealItem> {
  EkkloDailyMealItemMapper._();

  static EkkloDailyMealItemMapper? _instance;
  static EkkloDailyMealItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloDailyMealItemMapper._());
      EkkloMealItemTypeMapper.ensureInitialized();
      EkkloQuantityTypeMapper.ensureInitialized();
      EkkloFoodMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloDailyMealItem';

  static String _$id(EkkloDailyMealItem v) => v.id;
  static const Field<EkkloDailyMealItem, String> _f$id = Field('id', _$id);
  static EkkloMealItemType _$itemType(EkkloDailyMealItem v) => v.itemType;
  static const Field<EkkloDailyMealItem, EkkloMealItemType> _f$itemType = Field(
    'itemType',
    _$itemType,
    key: r'item_type',
  );
  static double _$quantity(EkkloDailyMealItem v) => v.quantity;
  static const Field<EkkloDailyMealItem, double> _f$quantity = Field(
    'quantity',
    _$quantity,
  );
  static EkkloQuantityType _$quantityType(EkkloDailyMealItem v) =>
      v.quantityType;
  static const Field<EkkloDailyMealItem, EkkloQuantityType> _f$quantityType =
      Field('quantityType', _$quantityType, key: r'quantity_type');
  static String? _$foodId(EkkloDailyMealItem v) => v.foodId;
  static const Field<EkkloDailyMealItem, String> _f$foodId = Field(
    'foodId',
    _$foodId,
    key: r'food_id',
    opt: true,
    hook: EmptyToNullHook(),
  );
  static EkkloFood? _$food(EkkloDailyMealItem v) => v.food;
  static const Field<EkkloDailyMealItem, EkkloFood> _f$food = Field(
    'food',
    _$food,
    opt: true,
    hook: BlankObjectToNullHook(),
  );
  static String? _$recipeId(EkkloDailyMealItem v) => v.recipeId;
  static const Field<EkkloDailyMealItem, String> _f$recipeId = Field(
    'recipeId',
    _$recipeId,
    key: r'recipe_id',
    opt: true,
    hook: EmptyToNullHook(),
  );
  static String? _$origin(EkkloDailyMealItem v) => v.origin;
  static const Field<EkkloDailyMealItem, String> _f$origin = Field(
    'origin',
    _$origin,
    opt: true,
    hook: EmptyToNullHook(),
  );
  static DateTime? _$createdAt(EkkloDailyMealItem v) => v.createdAt;
  static const Field<EkkloDailyMealItem, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
    opt: true,
  );
  static DateTime? _$updatedAt(EkkloDailyMealItem v) => v.updatedAt;
  static const Field<EkkloDailyMealItem, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
    opt: true,
  );

  @override
  final MappableFields<EkkloDailyMealItem> fields = const {
    #id: _f$id,
    #itemType: _f$itemType,
    #quantity: _f$quantity,
    #quantityType: _f$quantityType,
    #foodId: _f$foodId,
    #food: _f$food,
    #recipeId: _f$recipeId,
    #origin: _f$origin,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
  };
  @override
  final bool ignoreNull = true;

  static EkkloDailyMealItem _instantiate(DecodingData data) {
    return EkkloDailyMealItem(
      id: data.dec(_f$id),
      itemType: data.dec(_f$itemType),
      quantity: data.dec(_f$quantity),
      quantityType: data.dec(_f$quantityType),
      foodId: data.dec(_f$foodId),
      food: data.dec(_f$food),
      recipeId: data.dec(_f$recipeId),
      origin: data.dec(_f$origin),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloDailyMealItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloDailyMealItem>(map);
  }

  static EkkloDailyMealItem fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloDailyMealItem>(json);
  }
}

mixin EkkloDailyMealItemMappable {
  String toJson() {
    return EkkloDailyMealItemMapper.ensureInitialized()
        .encodeJson<EkkloDailyMealItem>(this as EkkloDailyMealItem);
  }

  Map<String, dynamic> toMap() {
    return EkkloDailyMealItemMapper.ensureInitialized()
        .encodeMap<EkkloDailyMealItem>(this as EkkloDailyMealItem);
  }

  EkkloDailyMealItemCopyWith<
    EkkloDailyMealItem,
    EkkloDailyMealItem,
    EkkloDailyMealItem
  >
  get copyWith =>
      _EkkloDailyMealItemCopyWithImpl<EkkloDailyMealItem, EkkloDailyMealItem>(
        this as EkkloDailyMealItem,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloDailyMealItemMapper.ensureInitialized().stringifyValue(
      this as EkkloDailyMealItem,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloDailyMealItemMapper.ensureInitialized().equalsValue(
      this as EkkloDailyMealItem,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloDailyMealItemMapper.ensureInitialized().hashValue(
      this as EkkloDailyMealItem,
    );
  }
}

extension EkkloDailyMealItemValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloDailyMealItem, $Out> {
  EkkloDailyMealItemCopyWith<$R, EkkloDailyMealItem, $Out>
  get $asEkkloDailyMealItem => $base.as(
    (v, t, t2) => _EkkloDailyMealItemCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class EkkloDailyMealItemCopyWith<
  $R,
  $In extends EkkloDailyMealItem,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  EkkloFoodCopyWith<$R, EkkloFood, EkkloFood>? get food;
  $R call({
    String? id,
    EkkloMealItemType? itemType,
    double? quantity,
    EkkloQuantityType? quantityType,
    String? foodId,
    EkkloFood? food,
    String? recipeId,
    String? origin,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  EkkloDailyMealItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EkkloDailyMealItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloDailyMealItem, $Out>
    implements EkkloDailyMealItemCopyWith<$R, EkkloDailyMealItem, $Out> {
  _EkkloDailyMealItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloDailyMealItem> $mapper =
      EkkloDailyMealItemMapper.ensureInitialized();
  @override
  EkkloFoodCopyWith<$R, EkkloFood, EkkloFood>? get food =>
      $value.food?.copyWith.$chain((v) => call(food: v));
  @override
  $R call({
    String? id,
    EkkloMealItemType? itemType,
    double? quantity,
    EkkloQuantityType? quantityType,
    Object? foodId = $none,
    Object? food = $none,
    Object? recipeId = $none,
    Object? origin = $none,
    Object? createdAt = $none,
    Object? updatedAt = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (itemType != null) #itemType: itemType,
      if (quantity != null) #quantity: quantity,
      if (quantityType != null) #quantityType: quantityType,
      if (foodId != $none) #foodId: foodId,
      if (food != $none) #food: food,
      if (recipeId != $none) #recipeId: recipeId,
      if (origin != $none) #origin: origin,
      if (createdAt != $none) #createdAt: createdAt,
      if (updatedAt != $none) #updatedAt: updatedAt,
    }),
  );
  @override
  EkkloDailyMealItem $make(CopyWithData data) => EkkloDailyMealItem(
    id: data.get(#id, or: $value.id),
    itemType: data.get(#itemType, or: $value.itemType),
    quantity: data.get(#quantity, or: $value.quantity),
    quantityType: data.get(#quantityType, or: $value.quantityType),
    foodId: data.get(#foodId, or: $value.foodId),
    food: data.get(#food, or: $value.food),
    recipeId: data.get(#recipeId, or: $value.recipeId),
    origin: data.get(#origin, or: $value.origin),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
  );

  @override
  EkkloDailyMealItemCopyWith<$R2, EkkloDailyMealItem, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloDailyMealItemCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

