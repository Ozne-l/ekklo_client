// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'person.dart';

class EkkloPersonMapper extends ClassMapperBase<EkkloPerson> {
  EkkloPersonMapper._();

  static EkkloPersonMapper? _instance;
  static EkkloPersonMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloPersonMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloPerson';

  static String _$id(EkkloPerson v) => v.id;
  static const Field<EkkloPerson, String> _f$id = Field('id', _$id);
  static String? _$fullName(EkkloPerson v) => v.fullName;
  static const Field<EkkloPerson, String> _f$fullName = Field(
    'fullName',
    _$fullName,
    key: r'full_name',
    opt: true,
    hook: EmptyToNullHook(),
  );
  static String? _$firstName(EkkloPerson v) => v.firstName;
  static const Field<EkkloPerson, String> _f$firstName = Field(
    'firstName',
    _$firstName,
    key: r'first_name',
    opt: true,
    hook: EmptyToNullHook(),
  );
  static String? _$lastName(EkkloPerson v) => v.lastName;
  static const Field<EkkloPerson, String> _f$lastName = Field(
    'lastName',
    _$lastName,
    key: r'last_name',
    opt: true,
    hook: EmptyToNullHook(),
  );
  static String? _$profilePicture(EkkloPerson v) => v.profilePicture;
  static const Field<EkkloPerson, String> _f$profilePicture = Field(
    'profilePicture',
    _$profilePicture,
    key: r'profile_picture',
    opt: true,
    hook: EmptyToNullHook(),
  );

  @override
  final MappableFields<EkkloPerson> fields = const {
    #id: _f$id,
    #fullName: _f$fullName,
    #firstName: _f$firstName,
    #lastName: _f$lastName,
    #profilePicture: _f$profilePicture,
  };
  @override
  final bool ignoreNull = true;

  static EkkloPerson _instantiate(DecodingData data) {
    return EkkloPerson(
      id: data.dec(_f$id),
      fullName: data.dec(_f$fullName),
      firstName: data.dec(_f$firstName),
      lastName: data.dec(_f$lastName),
      profilePicture: data.dec(_f$profilePicture),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloPerson fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloPerson>(map);
  }

  static EkkloPerson fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloPerson>(json);
  }
}

mixin EkkloPersonMappable {
  String toJson() {
    return EkkloPersonMapper.ensureInitialized().encodeJson<EkkloPerson>(
      this as EkkloPerson,
    );
  }

  Map<String, dynamic> toMap() {
    return EkkloPersonMapper.ensureInitialized().encodeMap<EkkloPerson>(
      this as EkkloPerson,
    );
  }

  EkkloPersonCopyWith<EkkloPerson, EkkloPerson, EkkloPerson> get copyWith =>
      _EkkloPersonCopyWithImpl<EkkloPerson, EkkloPerson>(
        this as EkkloPerson,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloPersonMapper.ensureInitialized().stringifyValue(
      this as EkkloPerson,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloPersonMapper.ensureInitialized().equalsValue(
      this as EkkloPerson,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloPersonMapper.ensureInitialized().hashValue(this as EkkloPerson);
  }
}

extension EkkloPersonValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloPerson, $Out> {
  EkkloPersonCopyWith<$R, EkkloPerson, $Out> get $asEkkloPerson =>
      $base.as((v, t, t2) => _EkkloPersonCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EkkloPersonCopyWith<$R, $In extends EkkloPerson, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    String? fullName,
    String? firstName,
    String? lastName,
    String? profilePicture,
  });
  EkkloPersonCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EkkloPersonCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloPerson, $Out>
    implements EkkloPersonCopyWith<$R, EkkloPerson, $Out> {
  _EkkloPersonCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloPerson> $mapper =
      EkkloPersonMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    Object? fullName = $none,
    Object? firstName = $none,
    Object? lastName = $none,
    Object? profilePicture = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (fullName != $none) #fullName: fullName,
      if (firstName != $none) #firstName: firstName,
      if (lastName != $none) #lastName: lastName,
      if (profilePicture != $none) #profilePicture: profilePicture,
    }),
  );
  @override
  EkkloPerson $make(CopyWithData data) => EkkloPerson(
    id: data.get(#id, or: $value.id),
    fullName: data.get(#fullName, or: $value.fullName),
    firstName: data.get(#firstName, or: $value.firstName),
    lastName: data.get(#lastName, or: $value.lastName),
    profilePicture: data.get(#profilePicture, or: $value.profilePicture),
  );

  @override
  EkkloPersonCopyWith<$R2, EkkloPerson, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloPersonCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

