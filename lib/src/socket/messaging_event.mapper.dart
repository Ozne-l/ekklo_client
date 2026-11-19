// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'messaging_event.dart';

class EkkloMessageDeletedMapper extends ClassMapperBase<EkkloMessageDeleted> {
  EkkloMessageDeletedMapper._();

  static EkkloMessageDeletedMapper? _instance;
  static EkkloMessageDeletedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloMessageDeletedMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloMessageDeleted';

  static String _$conversationId(EkkloMessageDeleted v) => v.conversationId;
  static const Field<EkkloMessageDeleted, String> _f$conversationId = Field(
    'conversationId',
    _$conversationId,
    key: r'conversation_id',
  );
  static String _$messageId(EkkloMessageDeleted v) => v.messageId;
  static const Field<EkkloMessageDeleted, String> _f$messageId = Field(
    'messageId',
    _$messageId,
    key: r'message_id',
  );

  @override
  final MappableFields<EkkloMessageDeleted> fields = const {
    #conversationId: _f$conversationId,
    #messageId: _f$messageId,
  };
  @override
  final bool ignoreNull = true;

  static EkkloMessageDeleted _instantiate(DecodingData data) {
    return EkkloMessageDeleted(
      conversationId: data.dec(_f$conversationId),
      messageId: data.dec(_f$messageId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloMessageDeleted fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloMessageDeleted>(map);
  }

  static EkkloMessageDeleted fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloMessageDeleted>(json);
  }
}

mixin EkkloMessageDeletedMappable {
  String toJson() {
    return EkkloMessageDeletedMapper.ensureInitialized()
        .encodeJson<EkkloMessageDeleted>(this as EkkloMessageDeleted);
  }

  Map<String, dynamic> toMap() {
    return EkkloMessageDeletedMapper.ensureInitialized()
        .encodeMap<EkkloMessageDeleted>(this as EkkloMessageDeleted);
  }

  EkkloMessageDeletedCopyWith<
    EkkloMessageDeleted,
    EkkloMessageDeleted,
    EkkloMessageDeleted
  >
  get copyWith =>
      _EkkloMessageDeletedCopyWithImpl<
        EkkloMessageDeleted,
        EkkloMessageDeleted
      >(this as EkkloMessageDeleted, $identity, $identity);
  @override
  String toString() {
    return EkkloMessageDeletedMapper.ensureInitialized().stringifyValue(
      this as EkkloMessageDeleted,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloMessageDeletedMapper.ensureInitialized().equalsValue(
      this as EkkloMessageDeleted,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloMessageDeletedMapper.ensureInitialized().hashValue(
      this as EkkloMessageDeleted,
    );
  }
}

extension EkkloMessageDeletedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloMessageDeleted, $Out> {
  EkkloMessageDeletedCopyWith<$R, EkkloMessageDeleted, $Out>
  get $asEkkloMessageDeleted => $base.as(
    (v, t, t2) => _EkkloMessageDeletedCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class EkkloMessageDeletedCopyWith<
  $R,
  $In extends EkkloMessageDeleted,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? conversationId, String? messageId});
  EkkloMessageDeletedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EkkloMessageDeletedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloMessageDeleted, $Out>
    implements EkkloMessageDeletedCopyWith<$R, EkkloMessageDeleted, $Out> {
  _EkkloMessageDeletedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloMessageDeleted> $mapper =
      EkkloMessageDeletedMapper.ensureInitialized();
  @override
  $R call({String? conversationId, String? messageId}) => $apply(
    FieldCopyWithData({
      if (conversationId != null) #conversationId: conversationId,
      if (messageId != null) #messageId: messageId,
    }),
  );
  @override
  EkkloMessageDeleted $make(CopyWithData data) => EkkloMessageDeleted(
    conversationId: data.get(#conversationId, or: $value.conversationId),
    messageId: data.get(#messageId, or: $value.messageId),
  );

  @override
  EkkloMessageDeletedCopyWith<$R2, EkkloMessageDeleted, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _EkkloMessageDeletedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class EkkloMessageReadMapper extends ClassMapperBase<EkkloMessageRead> {
  EkkloMessageReadMapper._();

  static EkkloMessageReadMapper? _instance;
  static EkkloMessageReadMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloMessageReadMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloMessageRead';

  static String _$conversationId(EkkloMessageRead v) => v.conversationId;
  static const Field<EkkloMessageRead, String> _f$conversationId = Field(
    'conversationId',
    _$conversationId,
    key: r'conversation_id',
  );
  static String? _$messageId(EkkloMessageRead v) => v.messageId;
  static const Field<EkkloMessageRead, String> _f$messageId = Field(
    'messageId',
    _$messageId,
    key: r'message_id',
    opt: true,
  );
  static String? _$userId(EkkloMessageRead v) => v.userId;
  static const Field<EkkloMessageRead, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
    opt: true,
  );

  @override
  final MappableFields<EkkloMessageRead> fields = const {
    #conversationId: _f$conversationId,
    #messageId: _f$messageId,
    #userId: _f$userId,
  };
  @override
  final bool ignoreNull = true;

  static EkkloMessageRead _instantiate(DecodingData data) {
    return EkkloMessageRead(
      conversationId: data.dec(_f$conversationId),
      messageId: data.dec(_f$messageId),
      userId: data.dec(_f$userId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloMessageRead fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloMessageRead>(map);
  }

  static EkkloMessageRead fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloMessageRead>(json);
  }
}

mixin EkkloMessageReadMappable {
  String toJson() {
    return EkkloMessageReadMapper.ensureInitialized()
        .encodeJson<EkkloMessageRead>(this as EkkloMessageRead);
  }

  Map<String, dynamic> toMap() {
    return EkkloMessageReadMapper.ensureInitialized()
        .encodeMap<EkkloMessageRead>(this as EkkloMessageRead);
  }

  EkkloMessageReadCopyWith<EkkloMessageRead, EkkloMessageRead, EkkloMessageRead>
  get copyWith =>
      _EkkloMessageReadCopyWithImpl<EkkloMessageRead, EkkloMessageRead>(
        this as EkkloMessageRead,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloMessageReadMapper.ensureInitialized().stringifyValue(
      this as EkkloMessageRead,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloMessageReadMapper.ensureInitialized().equalsValue(
      this as EkkloMessageRead,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloMessageReadMapper.ensureInitialized().hashValue(
      this as EkkloMessageRead,
    );
  }
}

extension EkkloMessageReadValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloMessageRead, $Out> {
  EkkloMessageReadCopyWith<$R, EkkloMessageRead, $Out>
  get $asEkkloMessageRead =>
      $base.as((v, t, t2) => _EkkloMessageReadCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EkkloMessageReadCopyWith<$R, $In extends EkkloMessageRead, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? conversationId, String? messageId, String? userId});
  EkkloMessageReadCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EkkloMessageReadCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloMessageRead, $Out>
    implements EkkloMessageReadCopyWith<$R, EkkloMessageRead, $Out> {
  _EkkloMessageReadCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloMessageRead> $mapper =
      EkkloMessageReadMapper.ensureInitialized();
  @override
  $R call({
    String? conversationId,
    Object? messageId = $none,
    Object? userId = $none,
  }) => $apply(
    FieldCopyWithData({
      if (conversationId != null) #conversationId: conversationId,
      if (messageId != $none) #messageId: messageId,
      if (userId != $none) #userId: userId,
    }),
  );
  @override
  EkkloMessageRead $make(CopyWithData data) => EkkloMessageRead(
    conversationId: data.get(#conversationId, or: $value.conversationId),
    messageId: data.get(#messageId, or: $value.messageId),
    userId: data.get(#userId, or: $value.userId),
  );

  @override
  EkkloMessageReadCopyWith<$R2, EkkloMessageRead, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloMessageReadCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class EkkloReactionAddedMapper extends ClassMapperBase<EkkloReactionAdded> {
  EkkloReactionAddedMapper._();

  static EkkloReactionAddedMapper? _instance;
  static EkkloReactionAddedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloReactionAddedMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloReactionAdded';

  static String _$conversationId(EkkloReactionAdded v) => v.conversationId;
  static const Field<EkkloReactionAdded, String> _f$conversationId = Field(
    'conversationId',
    _$conversationId,
    key: r'conversation_id',
  );
  static String _$messageId(EkkloReactionAdded v) => v.messageId;
  static const Field<EkkloReactionAdded, String> _f$messageId = Field(
    'messageId',
    _$messageId,
    key: r'message_id',
  );
  static String _$emoji(EkkloReactionAdded v) => v.emoji;
  static const Field<EkkloReactionAdded, String> _f$emoji = Field(
    'emoji',
    _$emoji,
  );
  static int _$newCount(EkkloReactionAdded v) => v.newCount;
  static const Field<EkkloReactionAdded, int> _f$newCount = Field(
    'newCount',
    _$newCount,
    key: r'new_count',
  );
  static bool _$mineNow(EkkloReactionAdded v) => v.mineNow;
  static const Field<EkkloReactionAdded, bool> _f$mineNow = Field(
    'mineNow',
    _$mineNow,
    key: r'mine_now',
  );
  static String _$userId(EkkloReactionAdded v) => v.userId;
  static const Field<EkkloReactionAdded, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );

  @override
  final MappableFields<EkkloReactionAdded> fields = const {
    #conversationId: _f$conversationId,
    #messageId: _f$messageId,
    #emoji: _f$emoji,
    #newCount: _f$newCount,
    #mineNow: _f$mineNow,
    #userId: _f$userId,
  };
  @override
  final bool ignoreNull = true;

  static EkkloReactionAdded _instantiate(DecodingData data) {
    return EkkloReactionAdded(
      conversationId: data.dec(_f$conversationId),
      messageId: data.dec(_f$messageId),
      emoji: data.dec(_f$emoji),
      newCount: data.dec(_f$newCount),
      mineNow: data.dec(_f$mineNow),
      userId: data.dec(_f$userId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloReactionAdded fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloReactionAdded>(map);
  }

  static EkkloReactionAdded fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloReactionAdded>(json);
  }
}

mixin EkkloReactionAddedMappable {
  String toJson() {
    return EkkloReactionAddedMapper.ensureInitialized()
        .encodeJson<EkkloReactionAdded>(this as EkkloReactionAdded);
  }

  Map<String, dynamic> toMap() {
    return EkkloReactionAddedMapper.ensureInitialized()
        .encodeMap<EkkloReactionAdded>(this as EkkloReactionAdded);
  }

  EkkloReactionAddedCopyWith<
    EkkloReactionAdded,
    EkkloReactionAdded,
    EkkloReactionAdded
  >
  get copyWith =>
      _EkkloReactionAddedCopyWithImpl<EkkloReactionAdded, EkkloReactionAdded>(
        this as EkkloReactionAdded,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloReactionAddedMapper.ensureInitialized().stringifyValue(
      this as EkkloReactionAdded,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloReactionAddedMapper.ensureInitialized().equalsValue(
      this as EkkloReactionAdded,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloReactionAddedMapper.ensureInitialized().hashValue(
      this as EkkloReactionAdded,
    );
  }
}

extension EkkloReactionAddedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloReactionAdded, $Out> {
  EkkloReactionAddedCopyWith<$R, EkkloReactionAdded, $Out>
  get $asEkkloReactionAdded => $base.as(
    (v, t, t2) => _EkkloReactionAddedCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class EkkloReactionAddedCopyWith<
  $R,
  $In extends EkkloReactionAdded,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? conversationId,
    String? messageId,
    String? emoji,
    int? newCount,
    bool? mineNow,
    String? userId,
  });
  EkkloReactionAddedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EkkloReactionAddedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloReactionAdded, $Out>
    implements EkkloReactionAddedCopyWith<$R, EkkloReactionAdded, $Out> {
  _EkkloReactionAddedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloReactionAdded> $mapper =
      EkkloReactionAddedMapper.ensureInitialized();
  @override
  $R call({
    String? conversationId,
    String? messageId,
    String? emoji,
    int? newCount,
    bool? mineNow,
    String? userId,
  }) => $apply(
    FieldCopyWithData({
      if (conversationId != null) #conversationId: conversationId,
      if (messageId != null) #messageId: messageId,
      if (emoji != null) #emoji: emoji,
      if (newCount != null) #newCount: newCount,
      if (mineNow != null) #mineNow: mineNow,
      if (userId != null) #userId: userId,
    }),
  );
  @override
  EkkloReactionAdded $make(CopyWithData data) => EkkloReactionAdded(
    conversationId: data.get(#conversationId, or: $value.conversationId),
    messageId: data.get(#messageId, or: $value.messageId),
    emoji: data.get(#emoji, or: $value.emoji),
    newCount: data.get(#newCount, or: $value.newCount),
    mineNow: data.get(#mineNow, or: $value.mineNow),
    userId: data.get(#userId, or: $value.userId),
  );

  @override
  EkkloReactionAddedCopyWith<$R2, EkkloReactionAdded, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloReactionAddedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class EkkloReactionRemovedMapper extends ClassMapperBase<EkkloReactionRemoved> {
  EkkloReactionRemovedMapper._();

  static EkkloReactionRemovedMapper? _instance;
  static EkkloReactionRemovedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloReactionRemovedMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloReactionRemoved';

  static String _$conversationId(EkkloReactionRemoved v) => v.conversationId;
  static const Field<EkkloReactionRemoved, String> _f$conversationId = Field(
    'conversationId',
    _$conversationId,
    key: r'conversation_id',
  );
  static String _$messageId(EkkloReactionRemoved v) => v.messageId;
  static const Field<EkkloReactionRemoved, String> _f$messageId = Field(
    'messageId',
    _$messageId,
    key: r'message_id',
  );
  static String _$emoji(EkkloReactionRemoved v) => v.emoji;
  static const Field<EkkloReactionRemoved, String> _f$emoji = Field(
    'emoji',
    _$emoji,
  );
  static int _$newCount(EkkloReactionRemoved v) => v.newCount;
  static const Field<EkkloReactionRemoved, int> _f$newCount = Field(
    'newCount',
    _$newCount,
    key: r'new_count',
  );
  static bool _$mineNow(EkkloReactionRemoved v) => v.mineNow;
  static const Field<EkkloReactionRemoved, bool> _f$mineNow = Field(
    'mineNow',
    _$mineNow,
    key: r'mine_now',
  );
  static String _$userId(EkkloReactionRemoved v) => v.userId;
  static const Field<EkkloReactionRemoved, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );

  @override
  final MappableFields<EkkloReactionRemoved> fields = const {
    #conversationId: _f$conversationId,
    #messageId: _f$messageId,
    #emoji: _f$emoji,
    #newCount: _f$newCount,
    #mineNow: _f$mineNow,
    #userId: _f$userId,
  };
  @override
  final bool ignoreNull = true;

  static EkkloReactionRemoved _instantiate(DecodingData data) {
    return EkkloReactionRemoved(
      conversationId: data.dec(_f$conversationId),
      messageId: data.dec(_f$messageId),
      emoji: data.dec(_f$emoji),
      newCount: data.dec(_f$newCount),
      mineNow: data.dec(_f$mineNow),
      userId: data.dec(_f$userId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloReactionRemoved fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloReactionRemoved>(map);
  }

  static EkkloReactionRemoved fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloReactionRemoved>(json);
  }
}

mixin EkkloReactionRemovedMappable {
  String toJson() {
    return EkkloReactionRemovedMapper.ensureInitialized()
        .encodeJson<EkkloReactionRemoved>(this as EkkloReactionRemoved);
  }

  Map<String, dynamic> toMap() {
    return EkkloReactionRemovedMapper.ensureInitialized()
        .encodeMap<EkkloReactionRemoved>(this as EkkloReactionRemoved);
  }

  EkkloReactionRemovedCopyWith<
    EkkloReactionRemoved,
    EkkloReactionRemoved,
    EkkloReactionRemoved
  >
  get copyWith =>
      _EkkloReactionRemovedCopyWithImpl<
        EkkloReactionRemoved,
        EkkloReactionRemoved
      >(this as EkkloReactionRemoved, $identity, $identity);
  @override
  String toString() {
    return EkkloReactionRemovedMapper.ensureInitialized().stringifyValue(
      this as EkkloReactionRemoved,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloReactionRemovedMapper.ensureInitialized().equalsValue(
      this as EkkloReactionRemoved,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloReactionRemovedMapper.ensureInitialized().hashValue(
      this as EkkloReactionRemoved,
    );
  }
}

extension EkkloReactionRemovedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloReactionRemoved, $Out> {
  EkkloReactionRemovedCopyWith<$R, EkkloReactionRemoved, $Out>
  get $asEkkloReactionRemoved => $base.as(
    (v, t, t2) => _EkkloReactionRemovedCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class EkkloReactionRemovedCopyWith<
  $R,
  $In extends EkkloReactionRemoved,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? conversationId,
    String? messageId,
    String? emoji,
    int? newCount,
    bool? mineNow,
    String? userId,
  });
  EkkloReactionRemovedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EkkloReactionRemovedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloReactionRemoved, $Out>
    implements EkkloReactionRemovedCopyWith<$R, EkkloReactionRemoved, $Out> {
  _EkkloReactionRemovedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloReactionRemoved> $mapper =
      EkkloReactionRemovedMapper.ensureInitialized();
  @override
  $R call({
    String? conversationId,
    String? messageId,
    String? emoji,
    int? newCount,
    bool? mineNow,
    String? userId,
  }) => $apply(
    FieldCopyWithData({
      if (conversationId != null) #conversationId: conversationId,
      if (messageId != null) #messageId: messageId,
      if (emoji != null) #emoji: emoji,
      if (newCount != null) #newCount: newCount,
      if (mineNow != null) #mineNow: mineNow,
      if (userId != null) #userId: userId,
    }),
  );
  @override
  EkkloReactionRemoved $make(CopyWithData data) => EkkloReactionRemoved(
    conversationId: data.get(#conversationId, or: $value.conversationId),
    messageId: data.get(#messageId, or: $value.messageId),
    emoji: data.get(#emoji, or: $value.emoji),
    newCount: data.get(#newCount, or: $value.newCount),
    mineNow: data.get(#mineNow, or: $value.mineNow),
    userId: data.get(#userId, or: $value.userId),
  );

  @override
  EkkloReactionRemovedCopyWith<$R2, EkkloReactionRemoved, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _EkkloReactionRemovedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

