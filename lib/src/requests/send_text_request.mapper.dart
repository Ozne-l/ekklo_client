// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'send_text_request.dart';

class SendTextRequestMapper extends ClassMapperBase<SendTextRequest> {
  SendTextRequestMapper._();

  static SendTextRequestMapper? _instance;
  static SendTextRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SendTextRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SendTextRequest';

  static String _$content(SendTextRequest v) => v.content;
  static const Field<SendTextRequest, String> _f$content = Field(
    'content',
    _$content,
  );
  static String? _$replyToId(SendTextRequest v) => v.replyToId;
  static const Field<SendTextRequest, String> _f$replyToId = Field(
    'replyToId',
    _$replyToId,
    key: r'reply_to_id',
    opt: true,
  );

  @override
  final MappableFields<SendTextRequest> fields = const {
    #content: _f$content,
    #replyToId: _f$replyToId,
  };
  @override
  final bool ignoreNull = true;

  static SendTextRequest _instantiate(DecodingData data) {
    return SendTextRequest(
      content: data.dec(_f$content),
      replyToId: data.dec(_f$replyToId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SendTextRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SendTextRequest>(map);
  }

  static SendTextRequest fromJson(String json) {
    return ensureInitialized().decodeJson<SendTextRequest>(json);
  }
}

mixin SendTextRequestMappable {
  String toJson() {
    return SendTextRequestMapper.ensureInitialized()
        .encodeJson<SendTextRequest>(this as SendTextRequest);
  }

  Map<String, dynamic> toMap() {
    return SendTextRequestMapper.ensureInitialized().encodeMap<SendTextRequest>(
      this as SendTextRequest,
    );
  }

  SendTextRequestCopyWith<SendTextRequest, SendTextRequest, SendTextRequest>
  get copyWith =>
      _SendTextRequestCopyWithImpl<SendTextRequest, SendTextRequest>(
        this as SendTextRequest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SendTextRequestMapper.ensureInitialized().stringifyValue(
      this as SendTextRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return SendTextRequestMapper.ensureInitialized().equalsValue(
      this as SendTextRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return SendTextRequestMapper.ensureInitialized().hashValue(
      this as SendTextRequest,
    );
  }
}

extension SendTextRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SendTextRequest, $Out> {
  SendTextRequestCopyWith<$R, SendTextRequest, $Out> get $asSendTextRequest =>
      $base.as((v, t, t2) => _SendTextRequestCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SendTextRequestCopyWith<$R, $In extends SendTextRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? content, String? replyToId});
  SendTextRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SendTextRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SendTextRequest, $Out>
    implements SendTextRequestCopyWith<$R, SendTextRequest, $Out> {
  _SendTextRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SendTextRequest> $mapper =
      SendTextRequestMapper.ensureInitialized();
  @override
  $R call({String? content, Object? replyToId = $none}) => $apply(
    FieldCopyWithData({
      if (content != null) #content: content,
      if (replyToId != $none) #replyToId: replyToId,
    }),
  );
  @override
  SendTextRequest $make(CopyWithData data) => SendTextRequest(
    content: data.get(#content, or: $value.content),
    replyToId: data.get(#replyToId, or: $value.replyToId),
  );

  @override
  SendTextRequestCopyWith<$R2, SendTextRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SendTextRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

