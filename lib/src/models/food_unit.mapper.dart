// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'food_unit.dart';

class EkkloFoodUnitMapper extends ClassMapperBase<EkkloFoodUnit> {
  EkkloFoodUnitMapper._();

  static EkkloFoodUnitMapper? _instance;
  static EkkloFoodUnitMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloFoodUnitMapper._());
      EkkloQuantityTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloFoodUnit';

  static EkkloQuantityType _$quantityType(EkkloFoodUnit v) => v.quantityType;
  static const Field<EkkloFoodUnit, EkkloQuantityType> _f$quantityType = Field(
    'quantityType',
    _$quantityType,
    key: r'quantity_type',
  );
  static double _$gramsPerUnit(EkkloFoodUnit v) => v.gramsPerUnit;
  static const Field<EkkloFoodUnit, double> _f$gramsPerUnit = Field(
    'gramsPerUnit',
    _$gramsPerUnit,
    key: r'grams_per_unit',
  );
  static String? _$id(EkkloFoodUnit v) => v.id;
  static const Field<EkkloFoodUnit, String> _f$id = Field(
    'id',
    _$id,
    opt: true,
  );

  @override
  final MappableFields<EkkloFoodUnit> fields = const {
    #quantityType: _f$quantityType,
    #gramsPerUnit: _f$gramsPerUnit,
    #id: _f$id,
  };
  @override
  final bool ignoreNull = true;

  static EkkloFoodUnit _instantiate(DecodingData data) {
    return EkkloFoodUnit(
      quantityType: data.dec(_f$quantityType),
      gramsPerUnit: data.dec(_f$gramsPerUnit),
      id: data.dec(_f$id),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloFoodUnit fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloFoodUnit>(map);
  }

  static EkkloFoodUnit fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloFoodUnit>(json);
  }
}

mixin EkkloFoodUnitMappable {
  String toJson() {
    return EkkloFoodUnitMapper.ensureInitialized().encodeJson<EkkloFoodUnit>(
      this as EkkloFoodUnit,
    );
  }

  Map<String, dynamic> toMap() {
    return EkkloFoodUnitMapper.ensureInitialized().encodeMap<EkkloFoodUnit>(
      this as EkkloFoodUnit,
    );
  }

  EkkloFoodUnitCopyWith<EkkloFoodUnit, EkkloFoodUnit, EkkloFoodUnit>
  get copyWith => _EkkloFoodUnitCopyWithImpl<EkkloFoodUnit, EkkloFoodUnit>(
    this as EkkloFoodUnit,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return EkkloFoodUnitMapper.ensureInitialized().stringifyValue(
      this as EkkloFoodUnit,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloFoodUnitMapper.ensureInitialized().equalsValue(
      this as EkkloFoodUnit,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloFoodUnitMapper.ensureInitialized().hashValue(
      this as EkkloFoodUnit,
    );
  }
}

extension EkkloFoodUnitValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloFoodUnit, $Out> {
  EkkloFoodUnitCopyWith<$R, EkkloFoodUnit, $Out> get $asEkkloFoodUnit =>
      $base.as((v, t, t2) => _EkkloFoodUnitCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EkkloFoodUnitCopyWith<$R, $In extends EkkloFoodUnit, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({EkkloQuantityType? quantityType, double? gramsPerUnit, String? id});
  EkkloFoodUnitCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EkkloFoodUnitCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloFoodUnit, $Out>
    implements EkkloFoodUnitCopyWith<$R, EkkloFoodUnit, $Out> {
  _EkkloFoodUnitCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloFoodUnit> $mapper =
      EkkloFoodUnitMapper.ensureInitialized();
  @override
  $R call({
    EkkloQuantityType? quantityType,
    double? gramsPerUnit,
    Object? id = $none,
  }) => $apply(
    FieldCopyWithData({
      if (quantityType != null) #quantityType: quantityType,
      if (gramsPerUnit != null) #gramsPerUnit: gramsPerUnit,
      if (id != $none) #id: id,
    }),
  );
  @override
  EkkloFoodUnit $make(CopyWithData data) => EkkloFoodUnit(
    quantityType: data.get(#quantityType, or: $value.quantityType),
    gramsPerUnit: data.get(#gramsPerUnit, or: $value.gramsPerUnit),
    id: data.get(#id, or: $value.id),
  );

  @override
  EkkloFoodUnitCopyWith<$R2, EkkloFoodUnit, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloFoodUnitCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

