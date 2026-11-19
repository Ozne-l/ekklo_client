// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'presigned_upload.dart';

class EkkloPresignedUploadMapper extends ClassMapperBase<EkkloPresignedUpload> {
  EkkloPresignedUploadMapper._();

  static EkkloPresignedUploadMapper? _instance;
  static EkkloPresignedUploadMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloPresignedUploadMapper._());
      MapperContainer.globals.useAll([UriMapper()]);
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloPresignedUpload';

  static Uri _$uploadUrl(EkkloPresignedUpload v) => v.uploadUrl;
  static const Field<EkkloPresignedUpload, Uri> _f$uploadUrl = Field(
    'uploadUrl',
    _$uploadUrl,
    key: r'upload_url',
  );
  static String _$fileKey(EkkloPresignedUpload v) => v.fileKey;
  static const Field<EkkloPresignedUpload, String> _f$fileKey = Field(
    'fileKey',
    _$fileKey,
    key: r'file_key',
  );
  static Uri _$publicUrl(EkkloPresignedUpload v) => v.publicUrl;
  static const Field<EkkloPresignedUpload, Uri> _f$publicUrl = Field(
    'publicUrl',
    _$publicUrl,
    key: r'public_url',
  );
  static DateTime _$expiresAt(EkkloPresignedUpload v) => v.expiresAt;
  static const Field<EkkloPresignedUpload, DateTime> _f$expiresAt = Field(
    'expiresAt',
    _$expiresAt,
    key: r'expires_at',
  );

  @override
  final MappableFields<EkkloPresignedUpload> fields = const {
    #uploadUrl: _f$uploadUrl,
    #fileKey: _f$fileKey,
    #publicUrl: _f$publicUrl,
    #expiresAt: _f$expiresAt,
  };
  @override
  final bool ignoreNull = true;

  static EkkloPresignedUpload _instantiate(DecodingData data) {
    return EkkloPresignedUpload(
      uploadUrl: data.dec(_f$uploadUrl),
      fileKey: data.dec(_f$fileKey),
      publicUrl: data.dec(_f$publicUrl),
      expiresAt: data.dec(_f$expiresAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloPresignedUpload fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloPresignedUpload>(map);
  }

  static EkkloPresignedUpload fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloPresignedUpload>(json);
  }
}

mixin EkkloPresignedUploadMappable {
  String toJson() {
    return EkkloPresignedUploadMapper.ensureInitialized()
        .encodeJson<EkkloPresignedUpload>(this as EkkloPresignedUpload);
  }

  Map<String, dynamic> toMap() {
    return EkkloPresignedUploadMapper.ensureInitialized()
        .encodeMap<EkkloPresignedUpload>(this as EkkloPresignedUpload);
  }

  EkkloPresignedUploadCopyWith<
    EkkloPresignedUpload,
    EkkloPresignedUpload,
    EkkloPresignedUpload
  >
  get copyWith =>
      _EkkloPresignedUploadCopyWithImpl<
        EkkloPresignedUpload,
        EkkloPresignedUpload
      >(this as EkkloPresignedUpload, $identity, $identity);
  @override
  String toString() {
    return EkkloPresignedUploadMapper.ensureInitialized().stringifyValue(
      this as EkkloPresignedUpload,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloPresignedUploadMapper.ensureInitialized().equalsValue(
      this as EkkloPresignedUpload,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloPresignedUploadMapper.ensureInitialized().hashValue(
      this as EkkloPresignedUpload,
    );
  }
}

extension EkkloPresignedUploadValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloPresignedUpload, $Out> {
  EkkloPresignedUploadCopyWith<$R, EkkloPresignedUpload, $Out>
  get $asEkkloPresignedUpload => $base.as(
    (v, t, t2) => _EkkloPresignedUploadCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class EkkloPresignedUploadCopyWith<
  $R,
  $In extends EkkloPresignedUpload,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    Uri? uploadUrl,
    String? fileKey,
    Uri? publicUrl,
    DateTime? expiresAt,
  });
  EkkloPresignedUploadCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EkkloPresignedUploadCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloPresignedUpload, $Out>
    implements EkkloPresignedUploadCopyWith<$R, EkkloPresignedUpload, $Out> {
  _EkkloPresignedUploadCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloPresignedUpload> $mapper =
      EkkloPresignedUploadMapper.ensureInitialized();
  @override
  $R call({
    Uri? uploadUrl,
    String? fileKey,
    Uri? publicUrl,
    DateTime? expiresAt,
  }) => $apply(
    FieldCopyWithData({
      if (uploadUrl != null) #uploadUrl: uploadUrl,
      if (fileKey != null) #fileKey: fileKey,
      if (publicUrl != null) #publicUrl: publicUrl,
      if (expiresAt != null) #expiresAt: expiresAt,
    }),
  );
  @override
  EkkloPresignedUpload $make(CopyWithData data) => EkkloPresignedUpload(
    uploadUrl: data.get(#uploadUrl, or: $value.uploadUrl),
    fileKey: data.get(#fileKey, or: $value.fileKey),
    publicUrl: data.get(#publicUrl, or: $value.publicUrl),
    expiresAt: data.get(#expiresAt, or: $value.expiresAt),
  );

  @override
  EkkloPresignedUploadCopyWith<$R2, EkkloPresignedUpload, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _EkkloPresignedUploadCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

