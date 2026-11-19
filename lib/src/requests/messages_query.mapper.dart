// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'messages_query.dart';

class MessagesQueryMapper extends ClassMapperBase<MessagesQuery> {
  MessagesQueryMapper._();

  static MessagesQueryMapper? _instance;
  static MessagesQueryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MessagesQueryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MessagesQuery';

  static int _$limit(MessagesQuery v) => v.limit;
  static const Field<MessagesQuery, int> _f$limit = Field('limit', _$limit);
  static String? _$beforeId(MessagesQuery v) => v.beforeId;
  static const Field<MessagesQuery, String> _f$beforeId = Field(
    'beforeId',
    _$beforeId,
    key: r'before_id',
    opt: true,
  );

  @override
  final MappableFields<MessagesQuery> fields = const {
    #limit: _f$limit,
    #beforeId: _f$beforeId,
  };
  @override
  final bool ignoreNull = true;

  static MessagesQuery _instantiate(DecodingData data) {
    return MessagesQuery(
      limit: data.dec(_f$limit),
      beforeId: data.dec(_f$beforeId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MessagesQuery fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MessagesQuery>(map);
  }

  static MessagesQuery fromJson(String json) {
    return ensureInitialized().decodeJson<MessagesQuery>(json);
  }
}

mixin MessagesQueryMappable {
  String toJson() {
    return MessagesQueryMapper.ensureInitialized().encodeJson<MessagesQuery>(
      this as MessagesQuery,
    );
  }

  Map<String, dynamic> toMap() {
    return MessagesQueryMapper.ensureInitialized().encodeMap<MessagesQuery>(
      this as MessagesQuery,
    );
  }

  MessagesQueryCopyWith<MessagesQuery, MessagesQuery, MessagesQuery>
  get copyWith => _MessagesQueryCopyWithImpl<MessagesQuery, MessagesQuery>(
    this as MessagesQuery,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return MessagesQueryMapper.ensureInitialized().stringifyValue(
      this as MessagesQuery,
    );
  }

  @override
  bool operator ==(Object other) {
    return MessagesQueryMapper.ensureInitialized().equalsValue(
      this as MessagesQuery,
      other,
    );
  }

  @override
  int get hashCode {
    return MessagesQueryMapper.ensureInitialized().hashValue(
      this as MessagesQuery,
    );
  }
}

extension MessagesQueryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MessagesQuery, $Out> {
  MessagesQueryCopyWith<$R, MessagesQuery, $Out> get $asMessagesQuery =>
      $base.as((v, t, t2) => _MessagesQueryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MessagesQueryCopyWith<$R, $In extends MessagesQuery, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? limit, String? beforeId});
  MessagesQueryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MessagesQueryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MessagesQuery, $Out>
    implements MessagesQueryCopyWith<$R, MessagesQuery, $Out> {
  _MessagesQueryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MessagesQuery> $mapper =
      MessagesQueryMapper.ensureInitialized();
  @override
  $R call({int? limit, Object? beforeId = $none}) => $apply(
    FieldCopyWithData({
      if (limit != null) #limit: limit,
      if (beforeId != $none) #beforeId: beforeId,
    }),
  );
  @override
  MessagesQuery $make(CopyWithData data) => MessagesQuery(
    limit: data.get(#limit, or: $value.limit),
    beforeId: data.get(#beforeId, or: $value.beforeId),
  );

  @override
  MessagesQueryCopyWith<$R2, MessagesQuery, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MessagesQueryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

