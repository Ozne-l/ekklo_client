// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'reply_to.dart';

class EkkloReplyToMapper extends ClassMapperBase<EkkloReplyTo> {
  EkkloReplyToMapper._();

  static EkkloReplyToMapper? _instance;
  static EkkloReplyToMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloReplyToMapper._());
      EkkloMessageTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloReplyTo';

  static String _$id(EkkloReplyTo v) => v.id;
  static const Field<EkkloReplyTo, String> _f$id = Field('id', _$id);
  static String? _$senderId(EkkloReplyTo v) => v.senderId;
  static const Field<EkkloReplyTo, String> _f$senderId = Field(
    'senderId',
    _$senderId,
    key: r'sender_id',
    opt: true,
  );
  static String? _$senderName(EkkloReplyTo v) => v.senderName;
  static const Field<EkkloReplyTo, String> _f$senderName = Field(
    'senderName',
    _$senderName,
    key: r'sender_name',
    opt: true,
  );
  static String? _$content(EkkloReplyTo v) => v.content;
  static const Field<EkkloReplyTo, String> _f$content = Field(
    'content',
    _$content,
    opt: true,
  );
  static EkkloMessageType _$type(EkkloReplyTo v) => v.type;
  static const Field<EkkloReplyTo, EkkloMessageType> _f$type = Field(
    'type',
    _$type,
    key: r'message_type',
    opt: true,
    def: EkkloMessageType.unknown,
  );
  static bool _$deleted(EkkloReplyTo v) => v.deleted;
  static const Field<EkkloReplyTo, bool> _f$deleted = Field(
    'deleted',
    _$deleted,
    opt: true,
    def: false,
  );

  @override
  final MappableFields<EkkloReplyTo> fields = const {
    #id: _f$id,
    #senderId: _f$senderId,
    #senderName: _f$senderName,
    #content: _f$content,
    #type: _f$type,
    #deleted: _f$deleted,
  };
  @override
  final bool ignoreNull = true;

  static EkkloReplyTo _instantiate(DecodingData data) {
    return EkkloReplyTo(
      id: data.dec(_f$id),
      senderId: data.dec(_f$senderId),
      senderName: data.dec(_f$senderName),
      content: data.dec(_f$content),
      type: data.dec(_f$type),
      deleted: data.dec(_f$deleted),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloReplyTo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloReplyTo>(map);
  }

  static EkkloReplyTo fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloReplyTo>(json);
  }
}

mixin EkkloReplyToMappable {
  String toJson() {
    return EkkloReplyToMapper.ensureInitialized().encodeJson<EkkloReplyTo>(
      this as EkkloReplyTo,
    );
  }

  Map<String, dynamic> toMap() {
    return EkkloReplyToMapper.ensureInitialized().encodeMap<EkkloReplyTo>(
      this as EkkloReplyTo,
    );
  }

  EkkloReplyToCopyWith<EkkloReplyTo, EkkloReplyTo, EkkloReplyTo> get copyWith =>
      _EkkloReplyToCopyWithImpl<EkkloReplyTo, EkkloReplyTo>(
        this as EkkloReplyTo,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloReplyToMapper.ensureInitialized().stringifyValue(
      this as EkkloReplyTo,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloReplyToMapper.ensureInitialized().equalsValue(
      this as EkkloReplyTo,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloReplyToMapper.ensureInitialized().hashValue(
      this as EkkloReplyTo,
    );
  }
}

extension EkkloReplyToValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloReplyTo, $Out> {
  EkkloReplyToCopyWith<$R, EkkloReplyTo, $Out> get $asEkkloReplyTo =>
      $base.as((v, t, t2) => _EkkloReplyToCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EkkloReplyToCopyWith<$R, $In extends EkkloReplyTo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    String? senderId,
    String? senderName,
    String? content,
    EkkloMessageType? type,
    bool? deleted,
  });
  EkkloReplyToCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EkkloReplyToCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloReplyTo, $Out>
    implements EkkloReplyToCopyWith<$R, EkkloReplyTo, $Out> {
  _EkkloReplyToCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloReplyTo> $mapper =
      EkkloReplyToMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    Object? senderId = $none,
    Object? senderName = $none,
    Object? content = $none,
    EkkloMessageType? type,
    bool? deleted,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (senderId != $none) #senderId: senderId,
      if (senderName != $none) #senderName: senderName,
      if (content != $none) #content: content,
      if (type != null) #type: type,
      if (deleted != null) #deleted: deleted,
    }),
  );
  @override
  EkkloReplyTo $make(CopyWithData data) => EkkloReplyTo(
    id: data.get(#id, or: $value.id),
    senderId: data.get(#senderId, or: $value.senderId),
    senderName: data.get(#senderName, or: $value.senderName),
    content: data.get(#content, or: $value.content),
    type: data.get(#type, or: $value.type),
    deleted: data.get(#deleted, or: $value.deleted),
  );

  @override
  EkkloReplyToCopyWith<$R2, EkkloReplyTo, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloReplyToCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

