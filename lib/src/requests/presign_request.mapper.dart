// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'presign_request.dart';

class PresignRequestMapper extends ClassMapperBase<PresignRequest> {
  PresignRequestMapper._();

  static PresignRequestMapper? _instance;
  static PresignRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PresignRequestMapper._());
      EkkloUploadResourceTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PresignRequest';

  static String _$fileName(PresignRequest v) => v.fileName;
  static const Field<PresignRequest, String> _f$fileName = Field(
    'fileName',
    _$fileName,
    key: r'file_name',
  );
  static String _$fileType(PresignRequest v) => v.fileType;
  static const Field<PresignRequest, String> _f$fileType = Field(
    'fileType',
    _$fileType,
    key: r'file_type',
  );
  static EkkloUploadResourceType _$resourceType(PresignRequest v) =>
      v.resourceType;
  static const Field<PresignRequest, EkkloUploadResourceType> _f$resourceType =
      Field('resourceType', _$resourceType, key: r'resource_type');
  static String _$resourceId(PresignRequest v) => v.resourceId;
  static const Field<PresignRequest, String> _f$resourceId = Field(
    'resourceId',
    _$resourceId,
    key: r'resource_id',
  );

  @override
  final MappableFields<PresignRequest> fields = const {
    #fileName: _f$fileName,
    #fileType: _f$fileType,
    #resourceType: _f$resourceType,
    #resourceId: _f$resourceId,
  };
  @override
  final bool ignoreNull = true;

  static PresignRequest _instantiate(DecodingData data) {
    return PresignRequest(
      fileName: data.dec(_f$fileName),
      fileType: data.dec(_f$fileType),
      resourceType: data.dec(_f$resourceType),
      resourceId: data.dec(_f$resourceId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PresignRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PresignRequest>(map);
  }

  static PresignRequest fromJson(String json) {
    return ensureInitialized().decodeJson<PresignRequest>(json);
  }
}

mixin PresignRequestMappable {
  String toJson() {
    return PresignRequestMapper.ensureInitialized().encodeJson<PresignRequest>(
      this as PresignRequest,
    );
  }

  Map<String, dynamic> toMap() {
    return PresignRequestMapper.ensureInitialized().encodeMap<PresignRequest>(
      this as PresignRequest,
    );
  }

  PresignRequestCopyWith<PresignRequest, PresignRequest, PresignRequest>
  get copyWith => _PresignRequestCopyWithImpl<PresignRequest, PresignRequest>(
    this as PresignRequest,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return PresignRequestMapper.ensureInitialized().stringifyValue(
      this as PresignRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return PresignRequestMapper.ensureInitialized().equalsValue(
      this as PresignRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return PresignRequestMapper.ensureInitialized().hashValue(
      this as PresignRequest,
    );
  }
}

extension PresignRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PresignRequest, $Out> {
  PresignRequestCopyWith<$R, PresignRequest, $Out> get $asPresignRequest =>
      $base.as((v, t, t2) => _PresignRequestCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PresignRequestCopyWith<$R, $In extends PresignRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? fileName,
    String? fileType,
    EkkloUploadResourceType? resourceType,
    String? resourceId,
  });
  PresignRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PresignRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PresignRequest, $Out>
    implements PresignRequestCopyWith<$R, PresignRequest, $Out> {
  _PresignRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PresignRequest> $mapper =
      PresignRequestMapper.ensureInitialized();
  @override
  $R call({
    String? fileName,
    String? fileType,
    EkkloUploadResourceType? resourceType,
    String? resourceId,
  }) => $apply(
    FieldCopyWithData({
      if (fileName != null) #fileName: fileName,
      if (fileType != null) #fileType: fileType,
      if (resourceType != null) #resourceType: resourceType,
      if (resourceId != null) #resourceId: resourceId,
    }),
  );
  @override
  PresignRequest $make(CopyWithData data) => PresignRequest(
    fileName: data.get(#fileName, or: $value.fileName),
    fileType: data.get(#fileType, or: $value.fileType),
    resourceType: data.get(#resourceType, or: $value.resourceType),
    resourceId: data.get(#resourceId, or: $value.resourceId),
  );

  @override
  PresignRequestCopyWith<$R2, PresignRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PresignRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

