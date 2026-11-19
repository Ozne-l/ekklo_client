// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'message_page.dart';

class EkkloMessagePageMapper extends ClassMapperBase<EkkloMessagePage> {
  EkkloMessagePageMapper._();

  static EkkloMessagePageMapper? _instance;
  static EkkloMessagePageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloMessagePageMapper._());
      EkkloMessageMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloMessagePage';

  static bool _$hasMore(EkkloMessagePage v) => v.hasMore;
  static const Field<EkkloMessagePage, bool> _f$hasMore = Field(
    'hasMore',
    _$hasMore,
    key: r'has_more',
  );
  static List<EkkloMessage> _$messages(EkkloMessagePage v) => v.messages;
  static const Field<EkkloMessagePage, List<EkkloMessage>> _f$messages = Field(
    'messages',
    _$messages,
    opt: true,
    def: const [],
    hook: NullToEmptyListHook(),
  );

  @override
  final MappableFields<EkkloMessagePage> fields = const {
    #hasMore: _f$hasMore,
    #messages: _f$messages,
  };
  @override
  final bool ignoreNull = true;

  static EkkloMessagePage _instantiate(DecodingData data) {
    return EkkloMessagePage(
      hasMore: data.dec(_f$hasMore),
      messages: data.dec(_f$messages),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloMessagePage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloMessagePage>(map);
  }

  static EkkloMessagePage fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloMessagePage>(json);
  }
}

mixin EkkloMessagePageMappable {
  String toJson() {
    return EkkloMessagePageMapper.ensureInitialized()
        .encodeJson<EkkloMessagePage>(this as EkkloMessagePage);
  }

  Map<String, dynamic> toMap() {
    return EkkloMessagePageMapper.ensureInitialized()
        .encodeMap<EkkloMessagePage>(this as EkkloMessagePage);
  }

  EkkloMessagePageCopyWith<EkkloMessagePage, EkkloMessagePage, EkkloMessagePage>
  get copyWith =>
      _EkkloMessagePageCopyWithImpl<EkkloMessagePage, EkkloMessagePage>(
        this as EkkloMessagePage,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloMessagePageMapper.ensureInitialized().stringifyValue(
      this as EkkloMessagePage,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloMessagePageMapper.ensureInitialized().equalsValue(
      this as EkkloMessagePage,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloMessagePageMapper.ensureInitialized().hashValue(
      this as EkkloMessagePage,
    );
  }
}

extension EkkloMessagePageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloMessagePage, $Out> {
  EkkloMessagePageCopyWith<$R, EkkloMessagePage, $Out>
  get $asEkkloMessagePage =>
      $base.as((v, t, t2) => _EkkloMessagePageCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EkkloMessagePageCopyWith<$R, $In extends EkkloMessagePage, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    EkkloMessage,
    EkkloMessageCopyWith<$R, EkkloMessage, EkkloMessage>
  >
  get messages;
  $R call({bool? hasMore, List<EkkloMessage>? messages});
  EkkloMessagePageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EkkloMessagePageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloMessagePage, $Out>
    implements EkkloMessagePageCopyWith<$R, EkkloMessagePage, $Out> {
  _EkkloMessagePageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloMessagePage> $mapper =
      EkkloMessagePageMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    EkkloMessage,
    EkkloMessageCopyWith<$R, EkkloMessage, EkkloMessage>
  >
  get messages => ListCopyWith(
    $value.messages,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(messages: v),
  );
  @override
  $R call({bool? hasMore, List<EkkloMessage>? messages}) => $apply(
    FieldCopyWithData({
      if (hasMore != null) #hasMore: hasMore,
      if (messages != null) #messages: messages,
    }),
  );
  @override
  EkkloMessagePage $make(CopyWithData data) => EkkloMessagePage(
    hasMore: data.get(#hasMore, or: $value.hasMore),
    messages: data.get(#messages, or: $value.messages),
  );

  @override
  EkkloMessagePageCopyWith<$R2, EkkloMessagePage, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloMessagePageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

