// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'ekklo_exception.dart';

class EkkloExceptionMapper extends ClassMapperBase<EkkloException> {
  EkkloExceptionMapper._();

  static EkkloExceptionMapper? _instance;
  static EkkloExceptionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloExceptionMapper._());
      EkkloAuthExceptionMapper.ensureInitialized();
      EkkloApiExceptionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloException';

  static List<String> _$errors(EkkloException v) => v.errors;
  static const Field<EkkloException, List<String>> _f$errors = Field(
    'errors',
    _$errors,
  );

  @override
  final MappableFields<EkkloException> fields = const {#errors: _f$errors};
  @override
  final bool ignoreNull = true;

  static EkkloException _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'EkkloException',
      'kind',
      '${data.value['kind']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloException fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloException>(map);
  }

  static EkkloException fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloException>(json);
  }
}

mixin EkkloExceptionMappable {
  String toJson();
  Map<String, dynamic> toMap();
  EkkloExceptionCopyWith<EkkloException, EkkloException, EkkloException>
  get copyWith;
}

abstract class EkkloExceptionCopyWith<$R, $In extends EkkloException, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get errors;
  $R call({List<String>? errors});
  EkkloExceptionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class EkkloAuthExceptionMapper extends SubClassMapperBase<EkkloAuthException> {
  EkkloAuthExceptionMapper._();

  static EkkloAuthExceptionMapper? _instance;
  static EkkloAuthExceptionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloAuthExceptionMapper._());
      EkkloExceptionMapper.ensureInitialized().addSubMapper(_instance!);
      EkkloAuthFailureMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloAuthException';

  static EkkloAuthFailure _$failure(EkkloAuthException v) => v.failure;
  static const Field<EkkloAuthException, EkkloAuthFailure> _f$failure = Field(
    'failure',
    _$failure,
  );
  static List<String> _$errors(EkkloAuthException v) => v.errors;
  static const Field<EkkloAuthException, List<String>> _f$errors = Field(
    'errors',
    _$errors,
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<EkkloAuthException> fields = const {
    #failure: _f$failure,
    #errors: _f$errors,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'kind';
  @override
  final dynamic discriminatorValue = 'EkkloAuthException';
  @override
  late final ClassMapperBase superMapper =
      EkkloExceptionMapper.ensureInitialized();

  static EkkloAuthException _instantiate(DecodingData data) {
    return EkkloAuthException(data.dec(_f$failure), data.dec(_f$errors));
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloAuthException fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloAuthException>(map);
  }

  static EkkloAuthException fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloAuthException>(json);
  }
}

mixin EkkloAuthExceptionMappable {
  String toJson() {
    return EkkloAuthExceptionMapper.ensureInitialized()
        .encodeJson<EkkloAuthException>(this as EkkloAuthException);
  }

  Map<String, dynamic> toMap() {
    return EkkloAuthExceptionMapper.ensureInitialized()
        .encodeMap<EkkloAuthException>(this as EkkloAuthException);
  }

  EkkloAuthExceptionCopyWith<
    EkkloAuthException,
    EkkloAuthException,
    EkkloAuthException
  >
  get copyWith =>
      _EkkloAuthExceptionCopyWithImpl<EkkloAuthException, EkkloAuthException>(
        this as EkkloAuthException,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloAuthExceptionMapper.ensureInitialized().stringifyValue(
      this as EkkloAuthException,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloAuthExceptionMapper.ensureInitialized().equalsValue(
      this as EkkloAuthException,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloAuthExceptionMapper.ensureInitialized().hashValue(
      this as EkkloAuthException,
    );
  }
}

extension EkkloAuthExceptionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloAuthException, $Out> {
  EkkloAuthExceptionCopyWith<$R, EkkloAuthException, $Out>
  get $asEkkloAuthException => $base.as(
    (v, t, t2) => _EkkloAuthExceptionCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class EkkloAuthExceptionCopyWith<
  $R,
  $In extends EkkloAuthException,
  $Out
>
    implements EkkloExceptionCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get errors;
  @override
  $R call({EkkloAuthFailure? failure, List<String>? errors});
  EkkloAuthExceptionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EkkloAuthExceptionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloAuthException, $Out>
    implements EkkloAuthExceptionCopyWith<$R, EkkloAuthException, $Out> {
  _EkkloAuthExceptionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloAuthException> $mapper =
      EkkloAuthExceptionMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get errors =>
      ListCopyWith(
        $value.errors,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(errors: v),
      );
  @override
  $R call({EkkloAuthFailure? failure, List<String>? errors}) => $apply(
    FieldCopyWithData({
      if (failure != null) #failure: failure,
      if (errors != null) #errors: errors,
    }),
  );
  @override
  EkkloAuthException $make(CopyWithData data) => EkkloAuthException(
    data.get(#failure, or: $value.failure),
    data.get(#errors, or: $value.errors),
  );

  @override
  EkkloAuthExceptionCopyWith<$R2, EkkloAuthException, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloAuthExceptionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class EkkloApiExceptionMapper extends SubClassMapperBase<EkkloApiException> {
  EkkloApiExceptionMapper._();

  static EkkloApiExceptionMapper? _instance;
  static EkkloApiExceptionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloApiExceptionMapper._());
      EkkloExceptionMapper.ensureInitialized().addSubMapper(_instance!);
      MapperContainer.globals.useAll([UriMapper()]);
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloApiException';

  static String _$method(EkkloApiException v) => v.method;
  static const Field<EkkloApiException, String> _f$method = Field(
    'method',
    _$method,
  );
  static Uri _$uri(EkkloApiException v) => v.uri;
  static const Field<EkkloApiException, Uri> _f$uri = Field('uri', _$uri);
  static int _$statusCode(EkkloApiException v) => v.statusCode;
  static const Field<EkkloApiException, int> _f$statusCode = Field(
    'statusCode',
    _$statusCode,
    key: r'status_code',
  );
  static List<String> _$errors(EkkloApiException v) => v.errors;
  static const Field<EkkloApiException, List<String>> _f$errors = Field(
    'errors',
    _$errors,
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<EkkloApiException> fields = const {
    #method: _f$method,
    #uri: _f$uri,
    #statusCode: _f$statusCode,
    #errors: _f$errors,
  };
  @override
  final bool ignoreNull = true;

  @override
  final String discriminatorKey = 'kind';
  @override
  final dynamic discriminatorValue = 'EkkloApiException';
  @override
  late final ClassMapperBase superMapper =
      EkkloExceptionMapper.ensureInitialized();

  static EkkloApiException _instantiate(DecodingData data) {
    return EkkloApiException(
      method: data.dec(_f$method),
      uri: data.dec(_f$uri),
      statusCode: data.dec(_f$statusCode),
      errors: data.dec(_f$errors),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloApiException fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloApiException>(map);
  }

  static EkkloApiException fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloApiException>(json);
  }
}

mixin EkkloApiExceptionMappable {
  String toJson() {
    return EkkloApiExceptionMapper.ensureInitialized()
        .encodeJson<EkkloApiException>(this as EkkloApiException);
  }

  Map<String, dynamic> toMap() {
    return EkkloApiExceptionMapper.ensureInitialized()
        .encodeMap<EkkloApiException>(this as EkkloApiException);
  }

  EkkloApiExceptionCopyWith<
    EkkloApiException,
    EkkloApiException,
    EkkloApiException
  >
  get copyWith =>
      _EkkloApiExceptionCopyWithImpl<EkkloApiException, EkkloApiException>(
        this as EkkloApiException,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloApiExceptionMapper.ensureInitialized().stringifyValue(
      this as EkkloApiException,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloApiExceptionMapper.ensureInitialized().equalsValue(
      this as EkkloApiException,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloApiExceptionMapper.ensureInitialized().hashValue(
      this as EkkloApiException,
    );
  }
}

extension EkkloApiExceptionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloApiException, $Out> {
  EkkloApiExceptionCopyWith<$R, EkkloApiException, $Out>
  get $asEkkloApiException => $base.as(
    (v, t, t2) => _EkkloApiExceptionCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class EkkloApiExceptionCopyWith<
  $R,
  $In extends EkkloApiException,
  $Out
>
    implements EkkloExceptionCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get errors;
  @override
  $R call({String? method, Uri? uri, int? statusCode, List<String>? errors});
  EkkloApiExceptionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EkkloApiExceptionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloApiException, $Out>
    implements EkkloApiExceptionCopyWith<$R, EkkloApiException, $Out> {
  _EkkloApiExceptionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloApiException> $mapper =
      EkkloApiExceptionMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get errors =>
      ListCopyWith(
        $value.errors,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(errors: v),
      );
  @override
  $R call({String? method, Uri? uri, int? statusCode, List<String>? errors}) =>
      $apply(
        FieldCopyWithData({
          if (method != null) #method: method,
          if (uri != null) #uri: uri,
          if (statusCode != null) #statusCode: statusCode,
          if (errors != null) #errors: errors,
        }),
      );
  @override
  EkkloApiException $make(CopyWithData data) => EkkloApiException(
    method: data.get(#method, or: $value.method),
    uri: data.get(#uri, or: $value.uri),
    statusCode: data.get(#statusCode, or: $value.statusCode),
    errors: data.get(#errors, or: $value.errors),
  );

  @override
  EkkloApiExceptionCopyWith<$R2, EkkloApiException, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloApiExceptionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

