// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'manual_macros_request.dart';

class ManualMacrosRequestMapper extends ClassMapperBase<ManualMacrosRequest> {
  ManualMacrosRequestMapper._();

  static ManualMacrosRequestMapper? _instance;
  static ManualMacrosRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ManualMacrosRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ManualMacrosRequest';

  static String _$date(ManualMacrosRequest v) => v.date;
  static const Field<ManualMacrosRequest, String> _f$date = Field(
    'date',
    _$date,
  );
  static String _$name(ManualMacrosRequest v) => v.name;
  static const Field<ManualMacrosRequest, String> _f$name = Field(
    'name',
    _$name,
  );
  static double _$manualCalories(ManualMacrosRequest v) => v.manualCalories;
  static const Field<ManualMacrosRequest, double> _f$manualCalories = Field(
    'manualCalories',
    _$manualCalories,
    key: r'manual_calories',
  );
  static double _$manualProteins(ManualMacrosRequest v) => v.manualProteins;
  static const Field<ManualMacrosRequest, double> _f$manualProteins = Field(
    'manualProteins',
    _$manualProteins,
    key: r'manual_proteins',
  );
  static double _$manualCarbs(ManualMacrosRequest v) => v.manualCarbs;
  static const Field<ManualMacrosRequest, double> _f$manualCarbs = Field(
    'manualCarbs',
    _$manualCarbs,
    key: r'manual_carbs',
  );
  static double _$manualFats(ManualMacrosRequest v) => v.manualFats;
  static const Field<ManualMacrosRequest, double> _f$manualFats = Field(
    'manualFats',
    _$manualFats,
    key: r'manual_fats',
  );

  @override
  final MappableFields<ManualMacrosRequest> fields = const {
    #date: _f$date,
    #name: _f$name,
    #manualCalories: _f$manualCalories,
    #manualProteins: _f$manualProteins,
    #manualCarbs: _f$manualCarbs,
    #manualFats: _f$manualFats,
  };
  @override
  final bool ignoreNull = true;

  static ManualMacrosRequest _instantiate(DecodingData data) {
    return ManualMacrosRequest(
      date: data.dec(_f$date),
      name: data.dec(_f$name),
      manualCalories: data.dec(_f$manualCalories),
      manualProteins: data.dec(_f$manualProteins),
      manualCarbs: data.dec(_f$manualCarbs),
      manualFats: data.dec(_f$manualFats),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ManualMacrosRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ManualMacrosRequest>(map);
  }

  static ManualMacrosRequest fromJson(String json) {
    return ensureInitialized().decodeJson<ManualMacrosRequest>(json);
  }
}

mixin ManualMacrosRequestMappable {
  String toJson() {
    return ManualMacrosRequestMapper.ensureInitialized()
        .encodeJson<ManualMacrosRequest>(this as ManualMacrosRequest);
  }

  Map<String, dynamic> toMap() {
    return ManualMacrosRequestMapper.ensureInitialized()
        .encodeMap<ManualMacrosRequest>(this as ManualMacrosRequest);
  }

  ManualMacrosRequestCopyWith<
    ManualMacrosRequest,
    ManualMacrosRequest,
    ManualMacrosRequest
  >
  get copyWith =>
      _ManualMacrosRequestCopyWithImpl<
        ManualMacrosRequest,
        ManualMacrosRequest
      >(this as ManualMacrosRequest, $identity, $identity);
  @override
  String toString() {
    return ManualMacrosRequestMapper.ensureInitialized().stringifyValue(
      this as ManualMacrosRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return ManualMacrosRequestMapper.ensureInitialized().equalsValue(
      this as ManualMacrosRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return ManualMacrosRequestMapper.ensureInitialized().hashValue(
      this as ManualMacrosRequest,
    );
  }
}

extension ManualMacrosRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ManualMacrosRequest, $Out> {
  ManualMacrosRequestCopyWith<$R, ManualMacrosRequest, $Out>
  get $asManualMacrosRequest => $base.as(
    (v, t, t2) => _ManualMacrosRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ManualMacrosRequestCopyWith<
  $R,
  $In extends ManualMacrosRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? date,
    String? name,
    double? manualCalories,
    double? manualProteins,
    double? manualCarbs,
    double? manualFats,
  });
  ManualMacrosRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ManualMacrosRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ManualMacrosRequest, $Out>
    implements ManualMacrosRequestCopyWith<$R, ManualMacrosRequest, $Out> {
  _ManualMacrosRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ManualMacrosRequest> $mapper =
      ManualMacrosRequestMapper.ensureInitialized();
  @override
  $R call({
    String? date,
    String? name,
    double? manualCalories,
    double? manualProteins,
    double? manualCarbs,
    double? manualFats,
  }) => $apply(
    FieldCopyWithData({
      if (date != null) #date: date,
      if (name != null) #name: name,
      if (manualCalories != null) #manualCalories: manualCalories,
      if (manualProteins != null) #manualProteins: manualProteins,
      if (manualCarbs != null) #manualCarbs: manualCarbs,
      if (manualFats != null) #manualFats: manualFats,
    }),
  );
  @override
  ManualMacrosRequest $make(CopyWithData data) => ManualMacrosRequest(
    date: data.get(#date, or: $value.date),
    name: data.get(#name, or: $value.name),
    manualCalories: data.get(#manualCalories, or: $value.manualCalories),
    manualProteins: data.get(#manualProteins, or: $value.manualProteins),
    manualCarbs: data.get(#manualCarbs, or: $value.manualCarbs),
    manualFats: data.get(#manualFats, or: $value.manualFats),
  );

  @override
  ManualMacrosRequestCopyWith<$R2, ManualMacrosRequest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ManualMacrosRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

