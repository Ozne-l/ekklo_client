// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'portion.dart';

class EkkloPortionMapper extends ClassMapperBase<EkkloPortion> {
  EkkloPortionMapper._();

  static EkkloPortionMapper? _instance;
  static EkkloPortionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloPortionMapper._());
      EkkloQuantityTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloPortion';

  static double _$quantity(EkkloPortion v) => v.quantity;
  static const Field<EkkloPortion, double> _f$quantity = Field(
    'quantity',
    _$quantity,
  );
  static EkkloQuantityType _$quantityType(EkkloPortion v) => v.quantityType;
  static const Field<EkkloPortion, EkkloQuantityType> _f$quantityType = Field(
    'quantityType',
    _$quantityType,
    key: r'quantity_type',
  );

  @override
  final MappableFields<EkkloPortion> fields = const {
    #quantity: _f$quantity,
    #quantityType: _f$quantityType,
  };
  @override
  final bool ignoreNull = true;

  static EkkloPortion _instantiate(DecodingData data) {
    return EkkloPortion(
      quantity: data.dec(_f$quantity),
      quantityType: data.dec(_f$quantityType),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloPortion fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloPortion>(map);
  }

  static EkkloPortion fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloPortion>(json);
  }
}

mixin EkkloPortionMappable {
  String toJson() {
    return EkkloPortionMapper.ensureInitialized().encodeJson<EkkloPortion>(
      this as EkkloPortion,
    );
  }

  Map<String, dynamic> toMap() {
    return EkkloPortionMapper.ensureInitialized().encodeMap<EkkloPortion>(
      this as EkkloPortion,
    );
  }

  EkkloPortionCopyWith<EkkloPortion, EkkloPortion, EkkloPortion> get copyWith =>
      _EkkloPortionCopyWithImpl<EkkloPortion, EkkloPortion>(
        this as EkkloPortion,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloPortionMapper.ensureInitialized().stringifyValue(
      this as EkkloPortion,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloPortionMapper.ensureInitialized().equalsValue(
      this as EkkloPortion,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloPortionMapper.ensureInitialized().hashValue(
      this as EkkloPortion,
    );
  }
}

extension EkkloPortionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloPortion, $Out> {
  EkkloPortionCopyWith<$R, EkkloPortion, $Out> get $asEkkloPortion =>
      $base.as((v, t, t2) => _EkkloPortionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EkkloPortionCopyWith<$R, $In extends EkkloPortion, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({double? quantity, EkkloQuantityType? quantityType});
  EkkloPortionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EkkloPortionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloPortion, $Out>
    implements EkkloPortionCopyWith<$R, EkkloPortion, $Out> {
  _EkkloPortionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloPortion> $mapper =
      EkkloPortionMapper.ensureInitialized();
  @override
  $R call({double? quantity, EkkloQuantityType? quantityType}) => $apply(
    FieldCopyWithData({
      if (quantity != null) #quantity: quantity,
      if (quantityType != null) #quantityType: quantityType,
    }),
  );
  @override
  EkkloPortion $make(CopyWithData data) => EkkloPortion(
    quantity: data.get(#quantity, or: $value.quantity),
    quantityType: data.get(#quantityType, or: $value.quantityType),
  );

  @override
  EkkloPortionCopyWith<$R2, EkkloPortion, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloPortionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

