// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_settings.dart';

class EkkloUserSettingsMapper extends ClassMapperBase<EkkloUserSettings> {
  EkkloUserSettingsMapper._();

  static EkkloUserSettingsMapper? _instance;
  static EkkloUserSettingsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloUserSettingsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloUserSettings';

  static bool _$messaging(EkkloUserSettings v) => v.messaging;
  static const Field<EkkloUserSettings, bool> _f$messaging = Field(
    'messaging',
    _$messaging,
    opt: true,
    def: false,
  );

  @override
  final MappableFields<EkkloUserSettings> fields = const {
    #messaging: _f$messaging,
  };
  @override
  final bool ignoreNull = true;

  static EkkloUserSettings _instantiate(DecodingData data) {
    return EkkloUserSettings(messaging: data.dec(_f$messaging));
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloUserSettings fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloUserSettings>(map);
  }

  static EkkloUserSettings fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloUserSettings>(json);
  }
}

mixin EkkloUserSettingsMappable {
  String toJson() {
    return EkkloUserSettingsMapper.ensureInitialized()
        .encodeJson<EkkloUserSettings>(this as EkkloUserSettings);
  }

  Map<String, dynamic> toMap() {
    return EkkloUserSettingsMapper.ensureInitialized()
        .encodeMap<EkkloUserSettings>(this as EkkloUserSettings);
  }

  EkkloUserSettingsCopyWith<
    EkkloUserSettings,
    EkkloUserSettings,
    EkkloUserSettings
  >
  get copyWith =>
      _EkkloUserSettingsCopyWithImpl<EkkloUserSettings, EkkloUserSettings>(
        this as EkkloUserSettings,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloUserSettingsMapper.ensureInitialized().stringifyValue(
      this as EkkloUserSettings,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloUserSettingsMapper.ensureInitialized().equalsValue(
      this as EkkloUserSettings,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloUserSettingsMapper.ensureInitialized().hashValue(
      this as EkkloUserSettings,
    );
  }
}

extension EkkloUserSettingsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloUserSettings, $Out> {
  EkkloUserSettingsCopyWith<$R, EkkloUserSettings, $Out>
  get $asEkkloUserSettings => $base.as(
    (v, t, t2) => _EkkloUserSettingsCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class EkkloUserSettingsCopyWith<
  $R,
  $In extends EkkloUserSettings,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? messaging});
  EkkloUserSettingsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EkkloUserSettingsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloUserSettings, $Out>
    implements EkkloUserSettingsCopyWith<$R, EkkloUserSettings, $Out> {
  _EkkloUserSettingsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloUserSettings> $mapper =
      EkkloUserSettingsMapper.ensureInitialized();
  @override
  $R call({bool? messaging}) =>
      $apply(FieldCopyWithData({if (messaging != null) #messaging: messaging}));
  @override
  EkkloUserSettings $make(CopyWithData data) =>
      EkkloUserSettings(messaging: data.get(#messaging, or: $value.messaging));

  @override
  EkkloUserSettingsCopyWith<$R2, EkkloUserSettings, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloUserSettingsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

