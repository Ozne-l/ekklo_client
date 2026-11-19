// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'direct_media_request.dart';

class DirectMediaRequestMapper extends ClassMapperBase<DirectMediaRequest> {
  DirectMediaRequestMapper._();

  static DirectMediaRequestMapper? _instance;
  static DirectMediaRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DirectMediaRequestMapper._());
      EkkloDirectMediaMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DirectMediaRequest';

  static List<EkkloDirectMedia> _$medias(DirectMediaRequest v) => v.medias;
  static const Field<DirectMediaRequest, List<EkkloDirectMedia>> _f$medias =
      Field('medias', _$medias);
  static String? _$caption(DirectMediaRequest v) => v.caption;
  static const Field<DirectMediaRequest, String> _f$caption = Field(
    'caption',
    _$caption,
    opt: true,
  );
  static String? _$replyToId(DirectMediaRequest v) => v.replyToId;
  static const Field<DirectMediaRequest, String> _f$replyToId = Field(
    'replyToId',
    _$replyToId,
    key: r'reply_to_id',
    opt: true,
  );

  @override
  final MappableFields<DirectMediaRequest> fields = const {
    #medias: _f$medias,
    #caption: _f$caption,
    #replyToId: _f$replyToId,
  };
  @override
  final bool ignoreNull = true;

  static DirectMediaRequest _instantiate(DecodingData data) {
    return DirectMediaRequest(
      medias: data.dec(_f$medias),
      caption: data.dec(_f$caption),
      replyToId: data.dec(_f$replyToId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static DirectMediaRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DirectMediaRequest>(map);
  }

  static DirectMediaRequest fromJson(String json) {
    return ensureInitialized().decodeJson<DirectMediaRequest>(json);
  }
}

mixin DirectMediaRequestMappable {
  String toJson() {
    return DirectMediaRequestMapper.ensureInitialized()
        .encodeJson<DirectMediaRequest>(this as DirectMediaRequest);
  }

  Map<String, dynamic> toMap() {
    return DirectMediaRequestMapper.ensureInitialized()
        .encodeMap<DirectMediaRequest>(this as DirectMediaRequest);
  }

  DirectMediaRequestCopyWith<
    DirectMediaRequest,
    DirectMediaRequest,
    DirectMediaRequest
  >
  get copyWith =>
      _DirectMediaRequestCopyWithImpl<DirectMediaRequest, DirectMediaRequest>(
        this as DirectMediaRequest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return DirectMediaRequestMapper.ensureInitialized().stringifyValue(
      this as DirectMediaRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return DirectMediaRequestMapper.ensureInitialized().equalsValue(
      this as DirectMediaRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return DirectMediaRequestMapper.ensureInitialized().hashValue(
      this as DirectMediaRequest,
    );
  }
}

extension DirectMediaRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DirectMediaRequest, $Out> {
  DirectMediaRequestCopyWith<$R, DirectMediaRequest, $Out>
  get $asDirectMediaRequest => $base.as(
    (v, t, t2) => _DirectMediaRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class DirectMediaRequestCopyWith<
  $R,
  $In extends DirectMediaRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    EkkloDirectMedia,
    EkkloDirectMediaCopyWith<$R, EkkloDirectMedia, EkkloDirectMedia>
  >
  get medias;
  $R call({List<EkkloDirectMedia>? medias, String? caption, String? replyToId});
  DirectMediaRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _DirectMediaRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DirectMediaRequest, $Out>
    implements DirectMediaRequestCopyWith<$R, DirectMediaRequest, $Out> {
  _DirectMediaRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DirectMediaRequest> $mapper =
      DirectMediaRequestMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    EkkloDirectMedia,
    EkkloDirectMediaCopyWith<$R, EkkloDirectMedia, EkkloDirectMedia>
  >
  get medias => ListCopyWith(
    $value.medias,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(medias: v),
  );
  @override
  $R call({
    List<EkkloDirectMedia>? medias,
    Object? caption = $none,
    Object? replyToId = $none,
  }) => $apply(
    FieldCopyWithData({
      if (medias != null) #medias: medias,
      if (caption != $none) #caption: caption,
      if (replyToId != $none) #replyToId: replyToId,
    }),
  );
  @override
  DirectMediaRequest $make(CopyWithData data) => DirectMediaRequest(
    medias: data.get(#medias, or: $value.medias),
    caption: data.get(#caption, or: $value.caption),
    replyToId: data.get(#replyToId, or: $value.replyToId),
  );

  @override
  DirectMediaRequestCopyWith<$R2, DirectMediaRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DirectMediaRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

