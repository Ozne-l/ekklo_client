// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'item_quantity_request.dart';

class ItemQuantityRequestMapper extends ClassMapperBase<ItemQuantityRequest> {
  ItemQuantityRequestMapper._();

  static ItemQuantityRequestMapper? _instance;
  static ItemQuantityRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ItemQuantityRequestMapper._());
      EkkloQuantityTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ItemQuantityRequest';

  static double _$quantity(ItemQuantityRequest v) => v.quantity;
  static const Field<ItemQuantityRequest, double> _f$quantity = Field(
    'quantity',
    _$quantity,
  );
  static EkkloQuantityType? _$quantityType(ItemQuantityRequest v) =>
      v.quantityType;
  static const Field<ItemQuantityRequest, EkkloQuantityType> _f$quantityType =
      Field('quantityType', _$quantityType, key: r'quantity_type', opt: true);
  static int? _$expectedRevision(ItemQuantityRequest v) => v.expectedRevision;
  static const Field<ItemQuantityRequest, int> _f$expectedRevision = Field(
    'expectedRevision',
    _$expectedRevision,
    key: r'expected_revision',
    opt: true,
  );

  @override
  final MappableFields<ItemQuantityRequest> fields = const {
    #quantity: _f$quantity,
    #quantityType: _f$quantityType,
    #expectedRevision: _f$expectedRevision,
  };
  @override
  final bool ignoreNull = true;

  static ItemQuantityRequest _instantiate(DecodingData data) {
    return ItemQuantityRequest(
      quantity: data.dec(_f$quantity),
      quantityType: data.dec(_f$quantityType),
      expectedRevision: data.dec(_f$expectedRevision),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ItemQuantityRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ItemQuantityRequest>(map);
  }

  static ItemQuantityRequest fromJson(String json) {
    return ensureInitialized().decodeJson<ItemQuantityRequest>(json);
  }
}

mixin ItemQuantityRequestMappable {
  String toJson() {
    return ItemQuantityRequestMapper.ensureInitialized()
        .encodeJson<ItemQuantityRequest>(this as ItemQuantityRequest);
  }

  Map<String, dynamic> toMap() {
    return ItemQuantityRequestMapper.ensureInitialized()
        .encodeMap<ItemQuantityRequest>(this as ItemQuantityRequest);
  }

  ItemQuantityRequestCopyWith<
    ItemQuantityRequest,
    ItemQuantityRequest,
    ItemQuantityRequest
  >
  get copyWith =>
      _ItemQuantityRequestCopyWithImpl<
        ItemQuantityRequest,
        ItemQuantityRequest
      >(this as ItemQuantityRequest, $identity, $identity);
  @override
  String toString() {
    return ItemQuantityRequestMapper.ensureInitialized().stringifyValue(
      this as ItemQuantityRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return ItemQuantityRequestMapper.ensureInitialized().equalsValue(
      this as ItemQuantityRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return ItemQuantityRequestMapper.ensureInitialized().hashValue(
      this as ItemQuantityRequest,
    );
  }
}

extension ItemQuantityRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ItemQuantityRequest, $Out> {
  ItemQuantityRequestCopyWith<$R, ItemQuantityRequest, $Out>
  get $asItemQuantityRequest => $base.as(
    (v, t, t2) => _ItemQuantityRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ItemQuantityRequestCopyWith<
  $R,
  $In extends ItemQuantityRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    double? quantity,
    EkkloQuantityType? quantityType,
    int? expectedRevision,
  });
  ItemQuantityRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ItemQuantityRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ItemQuantityRequest, $Out>
    implements ItemQuantityRequestCopyWith<$R, ItemQuantityRequest, $Out> {
  _ItemQuantityRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ItemQuantityRequest> $mapper =
      ItemQuantityRequestMapper.ensureInitialized();
  @override
  $R call({
    double? quantity,
    Object? quantityType = $none,
    Object? expectedRevision = $none,
  }) => $apply(
    FieldCopyWithData({
      if (quantity != null) #quantity: quantity,
      if (quantityType != $none) #quantityType: quantityType,
      if (expectedRevision != $none) #expectedRevision: expectedRevision,
    }),
  );
  @override
  ItemQuantityRequest $make(CopyWithData data) => ItemQuantityRequest(
    quantity: data.get(#quantity, or: $value.quantity),
    quantityType: data.get(#quantityType, or: $value.quantityType),
    expectedRevision: data.get(#expectedRevision, or: $value.expectedRevision),
  );

  @override
  ItemQuantityRequestCopyWith<$R2, ItemQuantityRequest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ItemQuantityRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

