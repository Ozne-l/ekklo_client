// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'reaction_request.dart';

class ReactionRequestMapper extends ClassMapperBase<ReactionRequest> {
  ReactionRequestMapper._();

  static ReactionRequestMapper? _instance;
  static ReactionRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ReactionRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ReactionRequest';

  static String _$emoji(ReactionRequest v) => v.emoji;
  static const Field<ReactionRequest, String> _f$emoji = Field(
    'emoji',
    _$emoji,
  );

  @override
  final MappableFields<ReactionRequest> fields = const {#emoji: _f$emoji};
  @override
  final bool ignoreNull = true;

  static ReactionRequest _instantiate(DecodingData data) {
    return ReactionRequest(emoji: data.dec(_f$emoji));
  }

  @override
  final Function instantiate = _instantiate;

  static ReactionRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ReactionRequest>(map);
  }

  static ReactionRequest fromJson(String json) {
    return ensureInitialized().decodeJson<ReactionRequest>(json);
  }
}

mixin ReactionRequestMappable {
  String toJson() {
    return ReactionRequestMapper.ensureInitialized()
        .encodeJson<ReactionRequest>(this as ReactionRequest);
  }

  Map<String, dynamic> toMap() {
    return ReactionRequestMapper.ensureInitialized().encodeMap<ReactionRequest>(
      this as ReactionRequest,
    );
  }

  ReactionRequestCopyWith<ReactionRequest, ReactionRequest, ReactionRequest>
  get copyWith =>
      _ReactionRequestCopyWithImpl<ReactionRequest, ReactionRequest>(
        this as ReactionRequest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ReactionRequestMapper.ensureInitialized().stringifyValue(
      this as ReactionRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return ReactionRequestMapper.ensureInitialized().equalsValue(
      this as ReactionRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return ReactionRequestMapper.ensureInitialized().hashValue(
      this as ReactionRequest,
    );
  }
}

extension ReactionRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ReactionRequest, $Out> {
  ReactionRequestCopyWith<$R, ReactionRequest, $Out> get $asReactionRequest =>
      $base.as((v, t, t2) => _ReactionRequestCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ReactionRequestCopyWith<$R, $In extends ReactionRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? emoji});
  ReactionRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ReactionRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ReactionRequest, $Out>
    implements ReactionRequestCopyWith<$R, ReactionRequest, $Out> {
  _ReactionRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ReactionRequest> $mapper =
      ReactionRequestMapper.ensureInitialized();
  @override
  $R call({String? emoji}) =>
      $apply(FieldCopyWithData({if (emoji != null) #emoji: emoji}));
  @override
  ReactionRequest $make(CopyWithData data) =>
      ReactionRequest(emoji: data.get(#emoji, or: $value.emoji));

  @override
  ReactionRequestCopyWith<$R2, ReactionRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ReactionRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

