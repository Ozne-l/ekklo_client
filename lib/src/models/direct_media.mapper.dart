// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'direct_media.dart';

class EkkloDirectMediaMapper extends ClassMapperBase<EkkloDirectMedia> {
  EkkloDirectMediaMapper._();

  static EkkloDirectMediaMapper? _instance;
  static EkkloDirectMediaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloDirectMediaMapper._());
      MapperContainer.globals.useAll([UriMapper()]);
      EkkloDirectMediaTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloDirectMedia';

  static Uri _$url(EkkloDirectMedia v) => v.url;
  static const Field<EkkloDirectMedia, Uri> _f$url = Field('url', _$url);
  static EkkloDirectMediaType _$mediaType(EkkloDirectMedia v) => v.mediaType;
  static const Field<EkkloDirectMedia, EkkloDirectMediaType> _f$mediaType =
      Field('mediaType', _$mediaType, key: r'media_type');

  @override
  final MappableFields<EkkloDirectMedia> fields = const {
    #url: _f$url,
    #mediaType: _f$mediaType,
  };
  @override
  final bool ignoreNull = true;

  static EkkloDirectMedia _instantiate(DecodingData data) {
    return EkkloDirectMedia(
      url: data.dec(_f$url),
      mediaType: data.dec(_f$mediaType),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloDirectMedia fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloDirectMedia>(map);
  }

  static EkkloDirectMedia fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloDirectMedia>(json);
  }
}

mixin EkkloDirectMediaMappable {
  String toJson() {
    return EkkloDirectMediaMapper.ensureInitialized()
        .encodeJson<EkkloDirectMedia>(this as EkkloDirectMedia);
  }

  Map<String, dynamic> toMap() {
    return EkkloDirectMediaMapper.ensureInitialized()
        .encodeMap<EkkloDirectMedia>(this as EkkloDirectMedia);
  }

  EkkloDirectMediaCopyWith<EkkloDirectMedia, EkkloDirectMedia, EkkloDirectMedia>
  get copyWith =>
      _EkkloDirectMediaCopyWithImpl<EkkloDirectMedia, EkkloDirectMedia>(
        this as EkkloDirectMedia,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloDirectMediaMapper.ensureInitialized().stringifyValue(
      this as EkkloDirectMedia,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloDirectMediaMapper.ensureInitialized().equalsValue(
      this as EkkloDirectMedia,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloDirectMediaMapper.ensureInitialized().hashValue(
      this as EkkloDirectMedia,
    );
  }
}

extension EkkloDirectMediaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloDirectMedia, $Out> {
  EkkloDirectMediaCopyWith<$R, EkkloDirectMedia, $Out>
  get $asEkkloDirectMedia =>
      $base.as((v, t, t2) => _EkkloDirectMediaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EkkloDirectMediaCopyWith<$R, $In extends EkkloDirectMedia, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({Uri? url, EkkloDirectMediaType? mediaType});
  EkkloDirectMediaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EkkloDirectMediaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloDirectMedia, $Out>
    implements EkkloDirectMediaCopyWith<$R, EkkloDirectMedia, $Out> {
  _EkkloDirectMediaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloDirectMedia> $mapper =
      EkkloDirectMediaMapper.ensureInitialized();
  @override
  $R call({Uri? url, EkkloDirectMediaType? mediaType}) => $apply(
    FieldCopyWithData({
      if (url != null) #url: url,
      if (mediaType != null) #mediaType: mediaType,
    }),
  );
  @override
  EkkloDirectMedia $make(CopyWithData data) => EkkloDirectMedia(
    url: data.get(#url, or: $value.url),
    mediaType: data.get(#mediaType, or: $value.mediaType),
  );

  @override
  EkkloDirectMediaCopyWith<$R2, EkkloDirectMedia, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloDirectMediaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

