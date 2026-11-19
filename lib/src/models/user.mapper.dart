// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user.dart';

class EkkloUserMapper extends ClassMapperBase<EkkloUser> {
  EkkloUserMapper._();

  static EkkloUserMapper? _instance;
  static EkkloUserMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloUserMapper._());
      EkkloUserSettingsMapper.ensureInitialized();
      EkkloCoachSettingsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloUser';

  static String _$id(EkkloUser v) => v.id;
  static const Field<EkkloUser, String> _f$id = Field('id', _$id);
  static EkkloUserSettings _$settings(EkkloUser v) => v.settings;
  static const Field<EkkloUser, EkkloUserSettings> _f$settings = Field(
    'settings',
    _$settings,
    opt: true,
    def: const EkkloUserSettings(),
  );
  static bool _$screenCaptureProtection(EkkloUser v) =>
      v.screenCaptureProtection;
  static const Field<EkkloUser, bool> _f$screenCaptureProtection = Field(
    'screenCaptureProtection',
    _$screenCaptureProtection,
    key: r'screen_capture_protection',
    opt: true,
    def: false,
  );
  static List<EkkloCoachSettings> _$coachesSettings(EkkloUser v) =>
      v.coachesSettings;
  static const Field<EkkloUser, List<EkkloCoachSettings>> _f$coachesSettings =
      Field(
        'coachesSettings',
        _$coachesSettings,
        key: r'coaches_settings',
        opt: true,
        def: const [],
        hook: NullToEmptyListHook(),
      );

  @override
  final MappableFields<EkkloUser> fields = const {
    #id: _f$id,
    #settings: _f$settings,
    #screenCaptureProtection: _f$screenCaptureProtection,
    #coachesSettings: _f$coachesSettings,
  };
  @override
  final bool ignoreNull = true;

  static EkkloUser _instantiate(DecodingData data) {
    return EkkloUser(
      id: data.dec(_f$id),
      settings: data.dec(_f$settings),
      screenCaptureProtection: data.dec(_f$screenCaptureProtection),
      coachesSettings: data.dec(_f$coachesSettings),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloUser fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloUser>(map);
  }

  static EkkloUser fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloUser>(json);
  }
}

mixin EkkloUserMappable {
  String toJson() {
    return EkkloUserMapper.ensureInitialized().encodeJson<EkkloUser>(
      this as EkkloUser,
    );
  }

  Map<String, dynamic> toMap() {
    return EkkloUserMapper.ensureInitialized().encodeMap<EkkloUser>(
      this as EkkloUser,
    );
  }

  EkkloUserCopyWith<EkkloUser, EkkloUser, EkkloUser> get copyWith =>
      _EkkloUserCopyWithImpl<EkkloUser, EkkloUser>(
        this as EkkloUser,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloUserMapper.ensureInitialized().stringifyValue(
      this as EkkloUser,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloUserMapper.ensureInitialized().equalsValue(
      this as EkkloUser,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloUserMapper.ensureInitialized().hashValue(this as EkkloUser);
  }
}

extension EkkloUserValueCopy<$R, $Out> on ObjectCopyWith<$R, EkkloUser, $Out> {
  EkkloUserCopyWith<$R, EkkloUser, $Out> get $asEkkloUser =>
      $base.as((v, t, t2) => _EkkloUserCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EkkloUserCopyWith<$R, $In extends EkkloUser, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  EkkloUserSettingsCopyWith<$R, EkkloUserSettings, EkkloUserSettings>
  get settings;
  ListCopyWith<
    $R,
    EkkloCoachSettings,
    EkkloCoachSettingsCopyWith<$R, EkkloCoachSettings, EkkloCoachSettings>
  >
  get coachesSettings;
  $R call({
    String? id,
    EkkloUserSettings? settings,
    bool? screenCaptureProtection,
    List<EkkloCoachSettings>? coachesSettings,
  });
  EkkloUserCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EkkloUserCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloUser, $Out>
    implements EkkloUserCopyWith<$R, EkkloUser, $Out> {
  _EkkloUserCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloUser> $mapper =
      EkkloUserMapper.ensureInitialized();
  @override
  EkkloUserSettingsCopyWith<$R, EkkloUserSettings, EkkloUserSettings>
  get settings => $value.settings.copyWith.$chain((v) => call(settings: v));
  @override
  ListCopyWith<
    $R,
    EkkloCoachSettings,
    EkkloCoachSettingsCopyWith<$R, EkkloCoachSettings, EkkloCoachSettings>
  >
  get coachesSettings => ListCopyWith(
    $value.coachesSettings,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(coachesSettings: v),
  );
  @override
  $R call({
    String? id,
    EkkloUserSettings? settings,
    bool? screenCaptureProtection,
    List<EkkloCoachSettings>? coachesSettings,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (settings != null) #settings: settings,
      if (screenCaptureProtection != null)
        #screenCaptureProtection: screenCaptureProtection,
      if (coachesSettings != null) #coachesSettings: coachesSettings,
    }),
  );
  @override
  EkkloUser $make(CopyWithData data) => EkkloUser(
    id: data.get(#id, or: $value.id),
    settings: data.get(#settings, or: $value.settings),
    screenCaptureProtection: data.get(
      #screenCaptureProtection,
      or: $value.screenCaptureProtection,
    ),
    coachesSettings: data.get(#coachesSettings, or: $value.coachesSettings),
  );

  @override
  EkkloUserCopyWith<$R2, EkkloUser, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloUserCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

