// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'macros.dart';

class EkkloMacrosMapper extends ClassMapperBase<EkkloMacros> {
  EkkloMacrosMapper._();

  static EkkloMacrosMapper? _instance;
  static EkkloMacrosMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloMacrosMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloMacros';

  static double _$calories(EkkloMacros v) => v.calories;
  static const Field<EkkloMacros, double> _f$calories = Field(
    'calories',
    _$calories,
  );
  static double _$proteins(EkkloMacros v) => v.proteins;
  static const Field<EkkloMacros, double> _f$proteins = Field(
    'proteins',
    _$proteins,
  );
  static double _$carbs(EkkloMacros v) => v.carbs;
  static const Field<EkkloMacros, double> _f$carbs = Field('carbs', _$carbs);
  static double _$fats(EkkloMacros v) => v.fats;
  static const Field<EkkloMacros, double> _f$fats = Field('fats', _$fats);

  @override
  final MappableFields<EkkloMacros> fields = const {
    #calories: _f$calories,
    #proteins: _f$proteins,
    #carbs: _f$carbs,
    #fats: _f$fats,
  };
  @override
  final bool ignoreNull = true;

  static EkkloMacros _instantiate(DecodingData data) {
    return EkkloMacros(
      calories: data.dec(_f$calories),
      proteins: data.dec(_f$proteins),
      carbs: data.dec(_f$carbs),
      fats: data.dec(_f$fats),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloMacros fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloMacros>(map);
  }

  static EkkloMacros fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloMacros>(json);
  }
}

mixin EkkloMacrosMappable {
  String toJson() {
    return EkkloMacrosMapper.ensureInitialized().encodeJson<EkkloMacros>(
      this as EkkloMacros,
    );
  }

  Map<String, dynamic> toMap() {
    return EkkloMacrosMapper.ensureInitialized().encodeMap<EkkloMacros>(
      this as EkkloMacros,
    );
  }

  EkkloMacrosCopyWith<EkkloMacros, EkkloMacros, EkkloMacros> get copyWith =>
      _EkkloMacrosCopyWithImpl<EkkloMacros, EkkloMacros>(
        this as EkkloMacros,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloMacrosMapper.ensureInitialized().stringifyValue(
      this as EkkloMacros,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloMacrosMapper.ensureInitialized().equalsValue(
      this as EkkloMacros,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloMacrosMapper.ensureInitialized().hashValue(this as EkkloMacros);
  }
}

extension EkkloMacrosValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloMacros, $Out> {
  EkkloMacrosCopyWith<$R, EkkloMacros, $Out> get $asEkkloMacros =>
      $base.as((v, t, t2) => _EkkloMacrosCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EkkloMacrosCopyWith<$R, $In extends EkkloMacros, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({double? calories, double? proteins, double? carbs, double? fats});
  EkkloMacrosCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EkkloMacrosCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloMacros, $Out>
    implements EkkloMacrosCopyWith<$R, EkkloMacros, $Out> {
  _EkkloMacrosCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloMacros> $mapper =
      EkkloMacrosMapper.ensureInitialized();
  @override
  $R call({double? calories, double? proteins, double? carbs, double? fats}) =>
      $apply(
        FieldCopyWithData({
          if (calories != null) #calories: calories,
          if (proteins != null) #proteins: proteins,
          if (carbs != null) #carbs: carbs,
          if (fats != null) #fats: fats,
        }),
      );
  @override
  EkkloMacros $make(CopyWithData data) => EkkloMacros(
    calories: data.get(#calories, or: $value.calories),
    proteins: data.get(#proteins, or: $value.proteins),
    carbs: data.get(#carbs, or: $value.carbs),
    fats: data.get(#fats, or: $value.fats),
  );

  @override
  EkkloMacrosCopyWith<$R2, EkkloMacros, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloMacrosCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

