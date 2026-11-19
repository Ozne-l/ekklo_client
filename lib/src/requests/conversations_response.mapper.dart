// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'conversations_response.dart';

class ConversationsResponseMapper
    extends ClassMapperBase<ConversationsResponse> {
  ConversationsResponseMapper._();

  static ConversationsResponseMapper? _instance;
  static ConversationsResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ConversationsResponseMapper._());
      EkkloConversationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ConversationsResponse';

  static List<EkkloConversation> _$conversations(ConversationsResponse v) =>
      v.conversations;
  static const Field<ConversationsResponse, List<EkkloConversation>>
  _f$conversations = Field(
    'conversations',
    _$conversations,
    opt: true,
    def: const [],
    hook: NullToEmptyListHook(),
  );

  @override
  final MappableFields<ConversationsResponse> fields = const {
    #conversations: _f$conversations,
  };
  @override
  final bool ignoreNull = true;

  static ConversationsResponse _instantiate(DecodingData data) {
    return ConversationsResponse(conversations: data.dec(_f$conversations));
  }

  @override
  final Function instantiate = _instantiate;

  static ConversationsResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ConversationsResponse>(map);
  }

  static ConversationsResponse fromJson(String json) {
    return ensureInitialized().decodeJson<ConversationsResponse>(json);
  }
}

mixin ConversationsResponseMappable {
  String toJson() {
    return ConversationsResponseMapper.ensureInitialized()
        .encodeJson<ConversationsResponse>(this as ConversationsResponse);
  }

  Map<String, dynamic> toMap() {
    return ConversationsResponseMapper.ensureInitialized()
        .encodeMap<ConversationsResponse>(this as ConversationsResponse);
  }

  ConversationsResponseCopyWith<
    ConversationsResponse,
    ConversationsResponse,
    ConversationsResponse
  >
  get copyWith =>
      _ConversationsResponseCopyWithImpl<
        ConversationsResponse,
        ConversationsResponse
      >(this as ConversationsResponse, $identity, $identity);
  @override
  String toString() {
    return ConversationsResponseMapper.ensureInitialized().stringifyValue(
      this as ConversationsResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return ConversationsResponseMapper.ensureInitialized().equalsValue(
      this as ConversationsResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return ConversationsResponseMapper.ensureInitialized().hashValue(
      this as ConversationsResponse,
    );
  }
}

extension ConversationsResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ConversationsResponse, $Out> {
  ConversationsResponseCopyWith<$R, ConversationsResponse, $Out>
  get $asConversationsResponse => $base.as(
    (v, t, t2) => _ConversationsResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ConversationsResponseCopyWith<
  $R,
  $In extends ConversationsResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    EkkloConversation,
    EkkloConversationCopyWith<$R, EkkloConversation, EkkloConversation>
  >
  get conversations;
  $R call({List<EkkloConversation>? conversations});
  ConversationsResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ConversationsResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ConversationsResponse, $Out>
    implements ConversationsResponseCopyWith<$R, ConversationsResponse, $Out> {
  _ConversationsResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ConversationsResponse> $mapper =
      ConversationsResponseMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    EkkloConversation,
    EkkloConversationCopyWith<$R, EkkloConversation, EkkloConversation>
  >
  get conversations => ListCopyWith(
    $value.conversations,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(conversations: v),
  );
  @override
  $R call({List<EkkloConversation>? conversations}) => $apply(
    FieldCopyWithData({
      if (conversations != null) #conversations: conversations,
    }),
  );
  @override
  ConversationsResponse $make(CopyWithData data) => ConversationsResponse(
    conversations: data.get(#conversations, or: $value.conversations),
  );

  @override
  ConversationsResponseCopyWith<$R2, ConversationsResponse, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ConversationsResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

