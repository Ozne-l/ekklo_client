// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'coach_settings.dart';

class EkkloCoachSettingsMapper extends ClassMapperBase<EkkloCoachSettings> {
  EkkloCoachSettingsMapper._();

  static EkkloCoachSettingsMapper? _instance;
  static EkkloCoachSettingsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloCoachSettingsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloCoachSettings';

  static String _$coachId(EkkloCoachSettings v) => v.coachId;
  static const Field<EkkloCoachSettings, String> _f$coachId = Field(
    'coachId',
    _$coachId,
    key: r'coach_id',
  );
  static bool _$screenCaptureProtection(EkkloCoachSettings v) =>
      v.screenCaptureProtection;
  static const Field<EkkloCoachSettings, bool> _f$screenCaptureProtection =
      Field(
        'screenCaptureProtection',
        _$screenCaptureProtection,
        key: r'screen_capture_protection',
        opt: true,
        def: false,
      );

  @override
  final MappableFields<EkkloCoachSettings> fields = const {
    #coachId: _f$coachId,
    #screenCaptureProtection: _f$screenCaptureProtection,
  };
  @override
  final bool ignoreNull = true;

  static EkkloCoachSettings _instantiate(DecodingData data) {
    return EkkloCoachSettings(
      coachId: data.dec(_f$coachId),
      screenCaptureProtection: data.dec(_f$screenCaptureProtection),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloCoachSettings fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloCoachSettings>(map);
  }

  static EkkloCoachSettings fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloCoachSettings>(json);
  }
}

mixin EkkloCoachSettingsMappable {
  String toJson() {
    return EkkloCoachSettingsMapper.ensureInitialized()
        .encodeJson<EkkloCoachSettings>(this as EkkloCoachSettings);
  }

  Map<String, dynamic> toMap() {
    return EkkloCoachSettingsMapper.ensureInitialized()
        .encodeMap<EkkloCoachSettings>(this as EkkloCoachSettings);
  }

  EkkloCoachSettingsCopyWith<
    EkkloCoachSettings,
    EkkloCoachSettings,
    EkkloCoachSettings
  >
  get copyWith =>
      _EkkloCoachSettingsCopyWithImpl<EkkloCoachSettings, EkkloCoachSettings>(
        this as EkkloCoachSettings,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloCoachSettingsMapper.ensureInitialized().stringifyValue(
      this as EkkloCoachSettings,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloCoachSettingsMapper.ensureInitialized().equalsValue(
      this as EkkloCoachSettings,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloCoachSettingsMapper.ensureInitialized().hashValue(
      this as EkkloCoachSettings,
    );
  }
}

extension EkkloCoachSettingsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloCoachSettings, $Out> {
  EkkloCoachSettingsCopyWith<$R, EkkloCoachSettings, $Out>
  get $asEkkloCoachSettings => $base.as(
    (v, t, t2) => _EkkloCoachSettingsCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class EkkloCoachSettingsCopyWith<
  $R,
  $In extends EkkloCoachSettings,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? coachId, bool? screenCaptureProtection});
  EkkloCoachSettingsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EkkloCoachSettingsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloCoachSettings, $Out>
    implements EkkloCoachSettingsCopyWith<$R, EkkloCoachSettings, $Out> {
  _EkkloCoachSettingsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloCoachSettings> $mapper =
      EkkloCoachSettingsMapper.ensureInitialized();
  @override
  $R call({String? coachId, bool? screenCaptureProtection}) => $apply(
    FieldCopyWithData({
      if (coachId != null) #coachId: coachId,
      if (screenCaptureProtection != null)
        #screenCaptureProtection: screenCaptureProtection,
    }),
  );
  @override
  EkkloCoachSettings $make(CopyWithData data) => EkkloCoachSettings(
    coachId: data.get(#coachId, or: $value.coachId),
    screenCaptureProtection: data.get(
      #screenCaptureProtection,
      or: $value.screenCaptureProtection,
    ),
  );

  @override
  EkkloCoachSettingsCopyWith<$R2, EkkloCoachSettings, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloCoachSettingsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

