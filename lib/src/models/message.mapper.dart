// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'message.dart';

class EkkloMessageMapper extends ClassMapperBase<EkkloMessage> {
  EkkloMessageMapper._();

  static EkkloMessageMapper? _instance;
  static EkkloMessageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloMessageMapper._());
      EkkloMessageTypeMapper.ensureInitialized();
      EkkloReplyToMapper.ensureInitialized();
      EkkloReactionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloMessage';

  static String _$id(EkkloMessage v) => v.id;
  static const Field<EkkloMessage, String> _f$id = Field('id', _$id);
  static String _$conversationId(EkkloMessage v) => v.conversationId;
  static const Field<EkkloMessage, String> _f$conversationId = Field(
    'conversationId',
    _$conversationId,
    key: r'conversation_id',
  );
  static String _$senderId(EkkloMessage v) => v.senderId;
  static const Field<EkkloMessage, String> _f$senderId = Field(
    'senderId',
    _$senderId,
    key: r'sender_id',
  );
  static EkkloMessageType _$type(EkkloMessage v) => v.type;
  static const Field<EkkloMessage, EkkloMessageType> _f$type = Field(
    'type',
    _$type,
    key: r'message_type',
  );
  static DateTime _$createdAt(EkkloMessage v) => v.createdAt;
  static const Field<EkkloMessage, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static String _$content(EkkloMessage v) => v.content;
  static const Field<EkkloMessage, String> _f$content = Field(
    'content',
    _$content,
    opt: true,
    def: '',
    hook: NullToEmptyStringHook(),
  );
  static List<String> _$mediaUrls(EkkloMessage v) => v.mediaUrls;
  static const Field<EkkloMessage, List<String>> _f$mediaUrls = Field(
    'mediaUrls',
    _$mediaUrls,
    key: r'media_urls',
    opt: true,
    def: const [],
    hook: NullToEmptyListHook(),
  );
  static bool _$internal(EkkloMessage v) => v.internal;
  static const Field<EkkloMessage, bool> _f$internal = Field(
    'internal',
    _$internal,
    opt: true,
    def: false,
  );
  static bool _$readByOther(EkkloMessage v) => v.readByOther;
  static const Field<EkkloMessage, bool> _f$readByOther = Field(
    'readByOther',
    _$readByOther,
    key: r'read_by_other',
    opt: true,
    def: false,
    hook: NullToFalseHook(),
  );
  static EkkloReplyTo? _$replyTo(EkkloMessage v) => v.replyTo;
  static const Field<EkkloMessage, EkkloReplyTo> _f$replyTo = Field(
    'replyTo',
    _$replyTo,
    key: r'reply_to',
    opt: true,
  );
  static List<EkkloReaction> _$reactions(EkkloMessage v) => v.reactions;
  static const Field<EkkloMessage, List<EkkloReaction>> _f$reactions = Field(
    'reactions',
    _$reactions,
    opt: true,
    def: const [],
    hook: NullToEmptyListHook(),
  );
  static Map<String, dynamic>? _$contentRef(EkkloMessage v) => v.contentRef;
  static const Field<EkkloMessage, Map<String, dynamic>> _f$contentRef = Field(
    'contentRef',
    _$contentRef,
    key: r'content_ref',
    opt: true,
  );
  static Map<String, dynamic> _$receivedJson(EkkloMessage v) => v.receivedJson;
  static const Field<EkkloMessage, Map<String, dynamic>> _f$receivedJson =
      Field(
        'receivedJson',
        _$receivedJson,
        key: r'$received',
        opt: true,
        def: const {},
      );

  @override
  final MappableFields<EkkloMessage> fields = const {
    #id: _f$id,
    #conversationId: _f$conversationId,
    #senderId: _f$senderId,
    #type: _f$type,
    #createdAt: _f$createdAt,
    #content: _f$content,
    #mediaUrls: _f$mediaUrls,
    #internal: _f$internal,
    #readByOther: _f$readByOther,
    #replyTo: _f$replyTo,
    #reactions: _f$reactions,
    #contentRef: _f$contentRef,
    #receivedJson: _f$receivedJson,
  };
  @override
  final bool ignoreNull = true;

  @override
  final MappingHook hook = const ReceivedJsonHook();
  static EkkloMessage _instantiate(DecodingData data) {
    return EkkloMessage(
      id: data.dec(_f$id),
      conversationId: data.dec(_f$conversationId),
      senderId: data.dec(_f$senderId),
      type: data.dec(_f$type),
      createdAt: data.dec(_f$createdAt),
      content: data.dec(_f$content),
      mediaUrls: data.dec(_f$mediaUrls),
      internal: data.dec(_f$internal),
      readByOther: data.dec(_f$readByOther),
      replyTo: data.dec(_f$replyTo),
      reactions: data.dec(_f$reactions),
      contentRef: data.dec(_f$contentRef),
      receivedJson: data.dec(_f$receivedJson),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloMessage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloMessage>(map);
  }

  static EkkloMessage fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloMessage>(json);
  }
}

mixin EkkloMessageMappable {
  String toJson() {
    return EkkloMessageMapper.ensureInitialized().encodeJson<EkkloMessage>(
      this as EkkloMessage,
    );
  }

  Map<String, dynamic> toMap() {
    return EkkloMessageMapper.ensureInitialized().encodeMap<EkkloMessage>(
      this as EkkloMessage,
    );
  }

  EkkloMessageCopyWith<EkkloMessage, EkkloMessage, EkkloMessage> get copyWith =>
      _EkkloMessageCopyWithImpl<EkkloMessage, EkkloMessage>(
        this as EkkloMessage,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloMessageMapper.ensureInitialized().stringifyValue(
      this as EkkloMessage,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloMessageMapper.ensureInitialized().equalsValue(
      this as EkkloMessage,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloMessageMapper.ensureInitialized().hashValue(
      this as EkkloMessage,
    );
  }
}

extension EkkloMessageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloMessage, $Out> {
  EkkloMessageCopyWith<$R, EkkloMessage, $Out> get $asEkkloMessage =>
      $base.as((v, t, t2) => _EkkloMessageCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EkkloMessageCopyWith<$R, $In extends EkkloMessage, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get mediaUrls;
  EkkloReplyToCopyWith<$R, EkkloReplyTo, EkkloReplyTo>? get replyTo;
  ListCopyWith<
    $R,
    EkkloReaction,
    EkkloReactionCopyWith<$R, EkkloReaction, EkkloReaction>
  >
  get reactions;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>?
  get contentRef;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>
  get receivedJson;
  $R call({
    String? id,
    String? conversationId,
    String? senderId,
    EkkloMessageType? type,
    DateTime? createdAt,
    String? content,
    List<String>? mediaUrls,
    bool? internal,
    bool? readByOther,
    EkkloReplyTo? replyTo,
    List<EkkloReaction>? reactions,
    Map<String, dynamic>? contentRef,
    Map<String, dynamic>? receivedJson,
  });
  EkkloMessageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EkkloMessageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloMessage, $Out>
    implements EkkloMessageCopyWith<$R, EkkloMessage, $Out> {
  _EkkloMessageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloMessage> $mapper =
      EkkloMessageMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get mediaUrls =>
      ListCopyWith(
        $value.mediaUrls,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(mediaUrls: v),
      );
  @override
  EkkloReplyToCopyWith<$R, EkkloReplyTo, EkkloReplyTo>? get replyTo =>
      $value.replyTo?.copyWith.$chain((v) => call(replyTo: v));
  @override
  ListCopyWith<
    $R,
    EkkloReaction,
    EkkloReactionCopyWith<$R, EkkloReaction, EkkloReaction>
  >
  get reactions => ListCopyWith(
    $value.reactions,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(reactions: v),
  );
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>?
  get contentRef => $value.contentRef != null
      ? MapCopyWith(
          $value.contentRef!,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(contentRef: v),
        )
      : null;
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>
  get receivedJson => MapCopyWith(
    $value.receivedJson,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(receivedJson: v),
  );
  @override
  $R call({
    String? id,
    String? conversationId,
    String? senderId,
    EkkloMessageType? type,
    DateTime? createdAt,
    String? content,
    List<String>? mediaUrls,
    bool? internal,
    bool? readByOther,
    Object? replyTo = $none,
    List<EkkloReaction>? reactions,
    Object? contentRef = $none,
    Map<String, dynamic>? receivedJson,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (conversationId != null) #conversationId: conversationId,
      if (senderId != null) #senderId: senderId,
      if (type != null) #type: type,
      if (createdAt != null) #createdAt: createdAt,
      if (content != null) #content: content,
      if (mediaUrls != null) #mediaUrls: mediaUrls,
      if (internal != null) #internal: internal,
      if (readByOther != null) #readByOther: readByOther,
      if (replyTo != $none) #replyTo: replyTo,
      if (reactions != null) #reactions: reactions,
      if (contentRef != $none) #contentRef: contentRef,
      if (receivedJson != null) #receivedJson: receivedJson,
    }),
  );
  @override
  EkkloMessage $make(CopyWithData data) => EkkloMessage(
    id: data.get(#id, or: $value.id),
    conversationId: data.get(#conversationId, or: $value.conversationId),
    senderId: data.get(#senderId, or: $value.senderId),
    type: data.get(#type, or: $value.type),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    content: data.get(#content, or: $value.content),
    mediaUrls: data.get(#mediaUrls, or: $value.mediaUrls),
    internal: data.get(#internal, or: $value.internal),
    readByOther: data.get(#readByOther, or: $value.readByOther),
    replyTo: data.get(#replyTo, or: $value.replyTo),
    reactions: data.get(#reactions, or: $value.reactions),
    contentRef: data.get(#contentRef, or: $value.contentRef),
    receivedJson: data.get(#receivedJson, or: $value.receivedJson),
  );

  @override
  EkkloMessageCopyWith<$R2, EkkloMessage, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloMessageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

