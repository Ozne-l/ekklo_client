// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'food_unit_draft.dart';

class EkkloFoodUnitDraftMapper extends ClassMapperBase<EkkloFoodUnitDraft> {
  EkkloFoodUnitDraftMapper._();

  static EkkloFoodUnitDraftMapper? _instance;
  static EkkloFoodUnitDraftMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloFoodUnitDraftMapper._());
      EkkloQuantityTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloFoodUnitDraft';

  static EkkloQuantityType _$quantityType(EkkloFoodUnitDraft v) =>
      v.quantityType;
  static const Field<EkkloFoodUnitDraft, EkkloQuantityType> _f$quantityType =
      Field('quantityType', _$quantityType, key: r'quantity_type');
  static double _$gramsPerUnit(EkkloFoodUnitDraft v) => v.gramsPerUnit;
  static const Field<EkkloFoodUnitDraft, double> _f$gramsPerUnit = Field(
    'gramsPerUnit',
    _$gramsPerUnit,
    key: r'grams_per_unit',
  );

  @override
  final MappableFields<EkkloFoodUnitDraft> fields = const {
    #quantityType: _f$quantityType,
    #gramsPerUnit: _f$gramsPerUnit,
  };
  @override
  final bool ignoreNull = true;

  static EkkloFoodUnitDraft _instantiate(DecodingData data) {
    return EkkloFoodUnitDraft(
      quantityType: data.dec(_f$quantityType),
      gramsPerUnit: data.dec(_f$gramsPerUnit),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloFoodUnitDraft fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloFoodUnitDraft>(map);
  }

  static EkkloFoodUnitDraft fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloFoodUnitDraft>(json);
  }
}

mixin EkkloFoodUnitDraftMappable {
  String toJson() {
    return EkkloFoodUnitDraftMapper.ensureInitialized()
        .encodeJson<EkkloFoodUnitDraft>(this as EkkloFoodUnitDraft);
  }

  Map<String, dynamic> toMap() {
    return EkkloFoodUnitDraftMapper.ensureInitialized()
        .encodeMap<EkkloFoodUnitDraft>(this as EkkloFoodUnitDraft);
  }

  EkkloFoodUnitDraftCopyWith<
    EkkloFoodUnitDraft,
    EkkloFoodUnitDraft,
    EkkloFoodUnitDraft
  >
  get copyWith =>
      _EkkloFoodUnitDraftCopyWithImpl<EkkloFoodUnitDraft, EkkloFoodUnitDraft>(
        this as EkkloFoodUnitDraft,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloFoodUnitDraftMapper.ensureInitialized().stringifyValue(
      this as EkkloFoodUnitDraft,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloFoodUnitDraftMapper.ensureInitialized().equalsValue(
      this as EkkloFoodUnitDraft,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloFoodUnitDraftMapper.ensureInitialized().hashValue(
      this as EkkloFoodUnitDraft,
    );
  }
}

extension EkkloFoodUnitDraftValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloFoodUnitDraft, $Out> {
  EkkloFoodUnitDraftCopyWith<$R, EkkloFoodUnitDraft, $Out>
  get $asEkkloFoodUnitDraft => $base.as(
    (v, t, t2) => _EkkloFoodUnitDraftCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class EkkloFoodUnitDraftCopyWith<
  $R,
  $In extends EkkloFoodUnitDraft,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({EkkloQuantityType? quantityType, double? gramsPerUnit});
  EkkloFoodUnitDraftCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EkkloFoodUnitDraftCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloFoodUnitDraft, $Out>
    implements EkkloFoodUnitDraftCopyWith<$R, EkkloFoodUnitDraft, $Out> {
  _EkkloFoodUnitDraftCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloFoodUnitDraft> $mapper =
      EkkloFoodUnitDraftMapper.ensureInitialized();
  @override
  $R call({EkkloQuantityType? quantityType, double? gramsPerUnit}) => $apply(
    FieldCopyWithData({
      if (quantityType != null) #quantityType: quantityType,
      if (gramsPerUnit != null) #gramsPerUnit: gramsPerUnit,
    }),
  );
  @override
  EkkloFoodUnitDraft $make(CopyWithData data) => EkkloFoodUnitDraft(
    quantityType: data.get(#quantityType, or: $value.quantityType),
    gramsPerUnit: data.get(#gramsPerUnit, or: $value.gramsPerUnit),
  );

  @override
  EkkloFoodUnitDraftCopyWith<$R2, EkkloFoodUnitDraft, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloFoodUnitDraftCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

