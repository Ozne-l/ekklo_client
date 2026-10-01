// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'refresh_request.dart';

class RefreshRequestMapper extends ClassMapperBase<RefreshRequest> {
  RefreshRequestMapper._();

  static RefreshRequestMapper? _instance;
  static RefreshRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RefreshRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RefreshRequest';

  static String _$refreshToken(RefreshRequest v) => v.refreshToken;
  static const Field<RefreshRequest, String> _f$refreshToken = Field(
    'refreshToken',
    _$refreshToken,
    key: r'refresh_token',
  );

  @override
  final MappableFields<RefreshRequest> fields = const {
    #refreshToken: _f$refreshToken,
  };
  @override
  final bool ignoreNull = true;

  static RefreshRequest _instantiate(DecodingData data) {
    return RefreshRequest(refreshToken: data.dec(_f$refreshToken));
  }

  @override
  final Function instantiate = _instantiate;

  static RefreshRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RefreshRequest>(map);
  }

  static RefreshRequest fromJson(String json) {
    return ensureInitialized().decodeJson<RefreshRequest>(json);
  }
}

mixin RefreshRequestMappable {
  String toJson() {
    return RefreshRequestMapper.ensureInitialized().encodeJson<RefreshRequest>(
      this as RefreshRequest,
    );
  }

  Map<String, dynamic> toMap() {
    return RefreshRequestMapper.ensureInitialized().encodeMap<RefreshRequest>(
      this as RefreshRequest,
    );
  }

  RefreshRequestCopyWith<RefreshRequest, RefreshRequest, RefreshRequest>
  get copyWith => _RefreshRequestCopyWithImpl<RefreshRequest, RefreshRequest>(
    this as RefreshRequest,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return RefreshRequestMapper.ensureInitialized().stringifyValue(
      this as RefreshRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return RefreshRequestMapper.ensureInitialized().equalsValue(
      this as RefreshRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return RefreshRequestMapper.ensureInitialized().hashValue(
      this as RefreshRequest,
    );
  }
}

extension RefreshRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RefreshRequest, $Out> {
  RefreshRequestCopyWith<$R, RefreshRequest, $Out> get $asRefreshRequest =>
      $base.as((v, t, t2) => _RefreshRequestCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RefreshRequestCopyWith<$R, $In extends RefreshRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? refreshToken});
  RefreshRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _RefreshRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RefreshRequest, $Out>
    implements RefreshRequestCopyWith<$R, RefreshRequest, $Out> {
  _RefreshRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RefreshRequest> $mapper =
      RefreshRequestMapper.ensureInitialized();
  @override
  $R call({String? refreshToken}) => $apply(
    FieldCopyWithData({if (refreshToken != null) #refreshToken: refreshToken}),
  );
  @override
  RefreshRequest $make(CopyWithData data) => RefreshRequest(
    refreshToken: data.get(#refreshToken, or: $value.refreshToken),
  );

  @override
  RefreshRequestCopyWith<$R2, RefreshRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RefreshRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

