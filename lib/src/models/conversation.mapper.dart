// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'conversation.dart';

class EkkloConversationMapper extends ClassMapperBase<EkkloConversation> {
  EkkloConversationMapper._();

  static EkkloConversationMapper? _instance;
  static EkkloConversationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloConversationMapper._());
      EkkloPersonMapper.ensureInitialized();
      EkkloMessageMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloConversation';

  static String _$id(EkkloConversation v) => v.id;
  static const Field<EkkloConversation, String> _f$id = Field('id', _$id);
  static bool _$canSend(EkkloConversation v) => v.canSend;
  static const Field<EkkloConversation, bool> _f$canSend = Field(
    'canSend',
    _$canSend,
    key: r'can_send',
  );
  static int _$unreadCount(EkkloConversation v) => v.unreadCount;
  static const Field<EkkloConversation, int> _f$unreadCount = Field(
    'unreadCount',
    _$unreadCount,
    key: r'unread_count',
    opt: true,
    def: 0,
  );
  static bool _$isPinned(EkkloConversation v) => v.isPinned;
  static const Field<EkkloConversation, bool> _f$isPinned = Field(
    'isPinned',
    _$isPinned,
    key: r'is_pinned',
    opt: true,
    def: false,
  );
  static EkkloPerson? _$coach(EkkloConversation v) => v.coach;
  static const Field<EkkloConversation, EkkloPerson> _f$coach = Field(
    'coach',
    _$coach,
    opt: true,
  );
  static EkkloPerson? _$customer(EkkloConversation v) => v.customer;
  static const Field<EkkloConversation, EkkloPerson> _f$customer = Field(
    'customer',
    _$customer,
    opt: true,
  );
  static DateTime? _$updatedAt(EkkloConversation v) => v.updatedAt;
  static const Field<EkkloConversation, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
    opt: true,
  );
  static List<EkkloMessage> _$lastMessages(EkkloConversation v) =>
      v.lastMessages;
  static const Field<EkkloConversation, List<EkkloMessage>> _f$lastMessages =
      Field(
        'lastMessages',
        _$lastMessages,
        key: r'last_messages',
        opt: true,
        def: const [],
        hook: NullToEmptyListHook(),
      );
  static Map<String, dynamic> _$receivedJson(EkkloConversation v) =>
      v.receivedJson;
  static const Field<EkkloConversation, Map<String, dynamic>> _f$receivedJson =
      Field(
        'receivedJson',
        _$receivedJson,
        key: r'$received',
        opt: true,
        def: const {},
      );

  @override
  final MappableFields<EkkloConversation> fields = const {
    #id: _f$id,
    #canSend: _f$canSend,
    #unreadCount: _f$unreadCount,
    #isPinned: _f$isPinned,
    #coach: _f$coach,
    #customer: _f$customer,
    #updatedAt: _f$updatedAt,
    #lastMessages: _f$lastMessages,
    #receivedJson: _f$receivedJson,
  };
  @override
  final bool ignoreNull = true;

  @override
  final MappingHook hook = const ReceivedJsonHook();
  static EkkloConversation _instantiate(DecodingData data) {
    return EkkloConversation(
      id: data.dec(_f$id),
      canSend: data.dec(_f$canSend),
      unreadCount: data.dec(_f$unreadCount),
      isPinned: data.dec(_f$isPinned),
      coach: data.dec(_f$coach),
      customer: data.dec(_f$customer),
      updatedAt: data.dec(_f$updatedAt),
      lastMessages: data.dec(_f$lastMessages),
      receivedJson: data.dec(_f$receivedJson),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloConversation fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloConversation>(map);
  }

  static EkkloConversation fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloConversation>(json);
  }
}

mixin EkkloConversationMappable {
  String toJson() {
    return EkkloConversationMapper.ensureInitialized()
        .encodeJson<EkkloConversation>(this as EkkloConversation);
  }

  Map<String, dynamic> toMap() {
    return EkkloConversationMapper.ensureInitialized()
        .encodeMap<EkkloConversation>(this as EkkloConversation);
  }

  EkkloConversationCopyWith<
    EkkloConversation,
    EkkloConversation,
    EkkloConversation
  >
  get copyWith =>
      _EkkloConversationCopyWithImpl<EkkloConversation, EkkloConversation>(
        this as EkkloConversation,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloConversationMapper.ensureInitialized().stringifyValue(
      this as EkkloConversation,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloConversationMapper.ensureInitialized().equalsValue(
      this as EkkloConversation,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloConversationMapper.ensureInitialized().hashValue(
      this as EkkloConversation,
    );
  }
}

extension EkkloConversationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloConversation, $Out> {
  EkkloConversationCopyWith<$R, EkkloConversation, $Out>
  get $asEkkloConversation => $base.as(
    (v, t, t2) => _EkkloConversationCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class EkkloConversationCopyWith<
  $R,
  $In extends EkkloConversation,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  EkkloPersonCopyWith<$R, EkkloPerson, EkkloPerson>? get coach;
  EkkloPersonCopyWith<$R, EkkloPerson, EkkloPerson>? get customer;
  ListCopyWith<
    $R,
    EkkloMessage,
    EkkloMessageCopyWith<$R, EkkloMessage, EkkloMessage>
  >
  get lastMessages;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>?>
  get receivedJson;
  $R call({
    String? id,
    bool? canSend,
    int? unreadCount,
    bool? isPinned,
    EkkloPerson? coach,
    EkkloPerson? customer,
    DateTime? updatedAt,
    List<EkkloMessage>? lastMessages,
    Map<String, dynamic>? receivedJson,
  });
  EkkloConversationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EkkloConversationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloConversation, $Out>
    implements EkkloConversationCopyWith<$R, EkkloConversation, $Out> {
  _EkkloConversationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloConversation> $mapper =
      EkkloConversationMapper.ensureInitialized();
  @override
  EkkloPersonCopyWith<$R, EkkloPerson, EkkloPerson>? get coach =>
      $value.coach?.copyWith.$chain((v) => call(coach: v));
  @override
  EkkloPersonCopyWith<$R, EkkloPerson, EkkloPerson>? get customer =>
      $value.customer?.copyWith.$chain((v) => call(customer: v));
  @override
  ListCopyWith<
    $R,
    EkkloMessage,
    EkkloMessageCopyWith<$R, EkkloMessage, EkkloMessage>
  >
  get lastMessages => ListCopyWith(
    $value.lastMessages,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(lastMessages: v),
  );
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
    bool? canSend,
    int? unreadCount,
    bool? isPinned,
    Object? coach = $none,
    Object? customer = $none,
    Object? updatedAt = $none,
    List<EkkloMessage>? lastMessages,
    Map<String, dynamic>? receivedJson,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (canSend != null) #canSend: canSend,
      if (unreadCount != null) #unreadCount: unreadCount,
      if (isPinned != null) #isPinned: isPinned,
      if (coach != $none) #coach: coach,
      if (customer != $none) #customer: customer,
      if (updatedAt != $none) #updatedAt: updatedAt,
      if (lastMessages != null) #lastMessages: lastMessages,
      if (receivedJson != null) #receivedJson: receivedJson,
    }),
  );
  @override
  EkkloConversation $make(CopyWithData data) => EkkloConversation(
    id: data.get(#id, or: $value.id),
    canSend: data.get(#canSend, or: $value.canSend),
    unreadCount: data.get(#unreadCount, or: $value.unreadCount),
    isPinned: data.get(#isPinned, or: $value.isPinned),
    coach: data.get(#coach, or: $value.coach),
    customer: data.get(#customer, or: $value.customer),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    lastMessages: data.get(#lastMessages, or: $value.lastMessages),
    receivedJson: data.get(#receivedJson, or: $value.receivedJson),
  );

  @override
  EkkloConversationCopyWith<$R2, EkkloConversation, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloConversationCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

