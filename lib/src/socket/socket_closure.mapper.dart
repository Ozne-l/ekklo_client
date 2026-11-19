// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'socket_closure.dart';

class EkkloSocketClosureMapper extends ClassMapperBase<EkkloSocketClosure> {
  EkkloSocketClosureMapper._();

  static EkkloSocketClosureMapper? _instance;
  static EkkloSocketClosureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloSocketClosureMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloSocketClosure';

  static int? _$code(EkkloSocketClosure v) => v.code;
  static const Field<EkkloSocketClosure, int> _f$code = Field(
    'code',
    _$code,
    opt: true,
  );
  static String _$reason(EkkloSocketClosure v) => v.reason;
  static const Field<EkkloSocketClosure, String> _f$reason = Field(
    'reason',
    _$reason,
    opt: true,
    def: '',
  );

  @override
  final MappableFields<EkkloSocketClosure> fields = const {
    #code: _f$code,
    #reason: _f$reason,
  };
  @override
  final bool ignoreNull = true;

  static EkkloSocketClosure _instantiate(DecodingData data) {
    return EkkloSocketClosure(
      code: data.dec(_f$code),
      reason: data.dec(_f$reason),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloSocketClosure fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloSocketClosure>(map);
  }

  static EkkloSocketClosure fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloSocketClosure>(json);
  }
}

mixin EkkloSocketClosureMappable {
  String toJson() {
    return EkkloSocketClosureMapper.ensureInitialized()
        .encodeJson<EkkloSocketClosure>(this as EkkloSocketClosure);
  }

  Map<String, dynamic> toMap() {
    return EkkloSocketClosureMapper.ensureInitialized()
        .encodeMap<EkkloSocketClosure>(this as EkkloSocketClosure);
  }

  EkkloSocketClosureCopyWith<
    EkkloSocketClosure,
    EkkloSocketClosure,
    EkkloSocketClosure
  >
  get copyWith =>
      _EkkloSocketClosureCopyWithImpl<EkkloSocketClosure, EkkloSocketClosure>(
        this as EkkloSocketClosure,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloSocketClosureMapper.ensureInitialized().stringifyValue(
      this as EkkloSocketClosure,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloSocketClosureMapper.ensureInitialized().equalsValue(
      this as EkkloSocketClosure,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloSocketClosureMapper.ensureInitialized().hashValue(
      this as EkkloSocketClosure,
    );
  }
}

extension EkkloSocketClosureValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloSocketClosure, $Out> {
  EkkloSocketClosureCopyWith<$R, EkkloSocketClosure, $Out>
  get $asEkkloSocketClosure => $base.as(
    (v, t, t2) => _EkkloSocketClosureCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class EkkloSocketClosureCopyWith<
  $R,
  $In extends EkkloSocketClosure,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? code, String? reason});
  EkkloSocketClosureCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EkkloSocketClosureCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloSocketClosure, $Out>
    implements EkkloSocketClosureCopyWith<$R, EkkloSocketClosure, $Out> {
  _EkkloSocketClosureCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloSocketClosure> $mapper =
      EkkloSocketClosureMapper.ensureInitialized();
  @override
  $R call({Object? code = $none, String? reason}) => $apply(
    FieldCopyWithData({
      if (code != $none) #code: code,
      if (reason != null) #reason: reason,
    }),
  );
  @override
  EkkloSocketClosure $make(CopyWithData data) => EkkloSocketClosure(
    code: data.get(#code, or: $value.code),
    reason: data.get(#reason, or: $value.reason),
  );

  @override
  EkkloSocketClosureCopyWith<$R2, EkkloSocketClosure, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloSocketClosureCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

