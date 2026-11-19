// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'voice_message_request.dart';

class VoiceMessageRequestMapper extends ClassMapperBase<VoiceMessageRequest> {
  VoiceMessageRequestMapper._();

  static VoiceMessageRequestMapper? _instance;
  static VoiceMessageRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VoiceMessageRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'VoiceMessageRequest';

  static String _$url(VoiceMessageRequest v) => v.url;
  static const Field<VoiceMessageRequest, String> _f$url = Field('url', _$url);
  static int _$duration(VoiceMessageRequest v) => v.duration;
  static const Field<VoiceMessageRequest, int> _f$duration = Field(
    'duration',
    _$duration,
  );
  static String? _$replyToId(VoiceMessageRequest v) => v.replyToId;
  static const Field<VoiceMessageRequest, String> _f$replyToId = Field(
    'replyToId',
    _$replyToId,
    key: r'reply_to_id',
    opt: true,
  );

  @override
  final MappableFields<VoiceMessageRequest> fields = const {
    #url: _f$url,
    #duration: _f$duration,
    #replyToId: _f$replyToId,
  };
  @override
  final bool ignoreNull = true;

  static VoiceMessageRequest _instantiate(DecodingData data) {
    return VoiceMessageRequest(
      url: data.dec(_f$url),
      duration: data.dec(_f$duration),
      replyToId: data.dec(_f$replyToId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static VoiceMessageRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VoiceMessageRequest>(map);
  }

  static VoiceMessageRequest fromJson(String json) {
    return ensureInitialized().decodeJson<VoiceMessageRequest>(json);
  }
}

mixin VoiceMessageRequestMappable {
  String toJson() {
    return VoiceMessageRequestMapper.ensureInitialized()
        .encodeJson<VoiceMessageRequest>(this as VoiceMessageRequest);
  }

  Map<String, dynamic> toMap() {
    return VoiceMessageRequestMapper.ensureInitialized()
        .encodeMap<VoiceMessageRequest>(this as VoiceMessageRequest);
  }

  VoiceMessageRequestCopyWith<
    VoiceMessageRequest,
    VoiceMessageRequest,
    VoiceMessageRequest
  >
  get copyWith =>
      _VoiceMessageRequestCopyWithImpl<
        VoiceMessageRequest,
        VoiceMessageRequest
      >(this as VoiceMessageRequest, $identity, $identity);
  @override
  String toString() {
    return VoiceMessageRequestMapper.ensureInitialized().stringifyValue(
      this as VoiceMessageRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return VoiceMessageRequestMapper.ensureInitialized().equalsValue(
      this as VoiceMessageRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return VoiceMessageRequestMapper.ensureInitialized().hashValue(
      this as VoiceMessageRequest,
    );
  }
}

extension VoiceMessageRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VoiceMessageRequest, $Out> {
  VoiceMessageRequestCopyWith<$R, VoiceMessageRequest, $Out>
  get $asVoiceMessageRequest => $base.as(
    (v, t, t2) => _VoiceMessageRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class VoiceMessageRequestCopyWith<
  $R,
  $In extends VoiceMessageRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? url, int? duration, String? replyToId});
  VoiceMessageRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _VoiceMessageRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VoiceMessageRequest, $Out>
    implements VoiceMessageRequestCopyWith<$R, VoiceMessageRequest, $Out> {
  _VoiceMessageRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VoiceMessageRequest> $mapper =
      VoiceMessageRequestMapper.ensureInitialized();
  @override
  $R call({String? url, int? duration, Object? replyToId = $none}) => $apply(
    FieldCopyWithData({
      if (url != null) #url: url,
      if (duration != null) #duration: duration,
      if (replyToId != $none) #replyToId: replyToId,
    }),
  );
  @override
  VoiceMessageRequest $make(CopyWithData data) => VoiceMessageRequest(
    url: data.get(#url, or: $value.url),
    duration: data.get(#duration, or: $value.duration),
    replyToId: data.get(#replyToId, or: $value.replyToId),
  );

  @override
  VoiceMessageRequestCopyWith<$R2, VoiceMessageRequest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _VoiceMessageRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

