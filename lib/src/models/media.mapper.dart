// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'media.dart';

class EkkloMediaMapper extends ClassMapperBase<EkkloMedia> {
  EkkloMediaMapper._();

  static EkkloMediaMapper? _instance;
  static EkkloMediaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloMediaMapper._());
      MapperContainer.globals.useAll([UriMapper()]);
      EkkloMediaKindMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloMedia';

  static Uri _$url(EkkloMedia v) => v.url;
  static const Field<EkkloMedia, Uri> _f$url = Field('url', _$url);
  static EkkloMediaKind _$kind(EkkloMedia v) => v.kind;
  static const Field<EkkloMedia, EkkloMediaKind> _f$kind = Field(
    'kind',
    _$kind,
  );

  @override
  final MappableFields<EkkloMedia> fields = const {
    #url: _f$url,
    #kind: _f$kind,
  };
  @override
  final bool ignoreNull = true;

  static EkkloMedia _instantiate(DecodingData data) {
    return EkkloMedia(url: data.dec(_f$url), kind: data.dec(_f$kind));
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloMedia fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloMedia>(map);
  }

  static EkkloMedia fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloMedia>(json);
  }
}

mixin EkkloMediaMappable {
  String toJson() {
    return EkkloMediaMapper.ensureInitialized().encodeJson<EkkloMedia>(
      this as EkkloMedia,
    );
  }

  Map<String, dynamic> toMap() {
    return EkkloMediaMapper.ensureInitialized().encodeMap<EkkloMedia>(
      this as EkkloMedia,
    );
  }

  EkkloMediaCopyWith<EkkloMedia, EkkloMedia, EkkloMedia> get copyWith =>
      _EkkloMediaCopyWithImpl<EkkloMedia, EkkloMedia>(
        this as EkkloMedia,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EkkloMediaMapper.ensureInitialized().stringifyValue(
      this as EkkloMedia,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloMediaMapper.ensureInitialized().equalsValue(
      this as EkkloMedia,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloMediaMapper.ensureInitialized().hashValue(this as EkkloMedia);
  }
}

extension EkkloMediaValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloMedia, $Out> {
  EkkloMediaCopyWith<$R, EkkloMedia, $Out> get $asEkkloMedia =>
      $base.as((v, t, t2) => _EkkloMediaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EkkloMediaCopyWith<$R, $In extends EkkloMedia, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({Uri? url, EkkloMediaKind? kind});
  EkkloMediaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EkkloMediaCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloMedia, $Out>
    implements EkkloMediaCopyWith<$R, EkkloMedia, $Out> {
  _EkkloMediaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloMedia> $mapper =
      EkkloMediaMapper.ensureInitialized();
  @override
  $R call({Uri? url, EkkloMediaKind? kind}) => $apply(
    FieldCopyWithData({
      if (url != null) #url: url,
      if (kind != null) #kind: kind,
    }),
  );
  @override
  EkkloMedia $make(CopyWithData data) => EkkloMedia(
    url: data.get(#url, or: $value.url),
    kind: data.get(#kind, or: $value.kind),
  );

  @override
  EkkloMediaCopyWith<$R2, EkkloMedia, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _EkkloMediaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

