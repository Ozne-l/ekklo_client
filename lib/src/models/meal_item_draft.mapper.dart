// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'meal_item_draft.dart';

class EkkloMealItemDraftMapper extends ClassMapperBase<EkkloMealItemDraft> {
  EkkloMealItemDraftMapper._();

  static EkkloMealItemDraftMapper? _instance;
  static EkkloMealItemDraftMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloMealItemDraftMapper._());
      EkkloQuantityTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloMealItemDraft';

  static String _$foodId(EkkloMealItemDraft v) => v.foodId;
  static const Field<EkkloMealItemDraft, String> _f$foodId = Field(
    'foodId',
    _$foodId,
    key: r'food_id',
  );
  static double _$quantity(EkkloMealItemDraft v) => v.quantity;
  static const Field<EkkloMealItemDraft, double> _f$quantity = Field(
    'quantity',
    _$quantity,
  );
  static EkkloQuantityType _$quantityType(EkkloMealItemDraft v) =>
      v.quantityType;
  static const Field<EkkloMealItemDraft, EkkloQuantityType> _f$quantityType =
      Field(
        'quantityType',
        _$quantityType,
        key: r'quantity_type',
        opt: true,
        def: EkkloQuantityType.grams,
      );
  static String _$itemType(EkkloMealItemDraft v) => v.itemType;
  static const Field<EkkloMealItemDraft, String> _f$itemType = Field(
    'itemType',
    _$itemType,
    key: r'item_type',
  );

  @override
  final MappableFields<EkkloMealItemDraft> fields = const {
    #foodId: _f$foodId,
    #quantity: _f$quantity,
    #quantityType: _f$quantityType,
    #itemType: _f$itemType,
  };
  @override
  final bool ignoreNull = true;

  static EkkloMealItemDraft _instantiate(DecodingData data) {
    return EkkloMealItemDraft.food(
      foodId: data.dec(_f$foodId),
      quantity: data.dec(_f$quantity),
      quantityType: data.dec(_f$quantityType),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloMealItemDraft fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloMealItemDraft>(map);
  }

  static EkkloMealItemDraft fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloMealItemDraft>(json);
  }
}

mixin EkkloMealItemDraftMappable {
  String toJson() {
    return EkkloMealItemDraftMapper.ensureInitialized()
        .encodeJson<EkkloMealItemDraft>(this as EkkloMealItemDraft);
  }

  Map<String, dynamic> toMap() {
    return EkkloMealItemDraftMapper.ensureInitialized()
        .encodeMap<EkkloMealItemDraft>(this as EkkloMealItemDraft);
  }

  EkkloMealItemDraftCopyWith<
    EkkloMealItemDraft,
    EkkloMealItemDraft,
    EkkloMealItemDraft
  >
  get copyWith =>
      _EkkloMealItemDraftCopyWithImpl<EkkloMealItemDraft, EkkloMealItemDraft>(
        this as EkkloMealItemDraft,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloMealItemDraftMapper.ensureInitialized().stringifyValue(
      this as EkkloMealItemDraft,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloMealItemDraftMapper.ensureInitialized().equalsValue(
      this as EkkloMealItemDraft,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloMealItemDraftMapper.ensureInitialized().hashValue(
      this as EkkloMealItemDraft,
    );
  }
}

extension EkkloMealItemDraftValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloMealItemDraft, $Out> {
  EkkloMealItemDraftCopyWith<$R, EkkloMealItemDraft, $Out>
  get $asEkkloMealItemDraft => $base.as(
    (v, t, t2) => _EkkloMealItemDraftCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class EkkloMealItemDraftCopyWith<
  $R,
  $In extends EkkloMealItemDraft,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? foodId, double? quantity, EkkloQuantityType? quantityType});
  EkkloMealItemDraftCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EkkloMealItemDraftCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloMealItemDraft, $Out>
    implements EkkloMealItemDraftCopyWith<$R, EkkloMealItemDraft, $Out> {
  _EkkloMealItemDraftCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloMealItemDraft> $mapper =
      EkkloMealItemDraftMapper.ensureInitialized();
  @override
  $R call({
    String? foodId,
    double? quantity,
    EkkloQuantityType? quantityType,
  }) => $apply(
    FieldCopyWithData({
      if (foodId != null) #foodId: foodId,
      if (quantity != null) #quantity: quantity,
      if (quantityType != null) #quantityType: quantityType,
    }),
  );
  @override
  EkkloMealItemDraft $make(CopyWithData data) => EkkloMealItemDraft.food(
    foodId: data.get(#foodId, or: $value.foodId),
    quantity: data.get(#quantity, or: $value.quantity),
    quantityType: data.get(#quantityType, or: $value.quantityType),
  );

  @override
  EkkloMealItemDraftCopyWith<$R2, EkkloMealItemDraft, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloMealItemDraftCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

