// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'food_search_query.dart';

class FoodSearchQueryMapper extends ClassMapperBase<FoodSearchQuery> {
  FoodSearchQueryMapper._();

  static FoodSearchQueryMapper? _instance;
  static FoodSearchQueryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FoodSearchQueryMapper._());
      EkkloLanguageMapper.ensureInitialized();
      EkkloFoodOwnerMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FoodSearchQuery';

  static String _$query(FoodSearchQuery v) => v.query;
  static const Field<FoodSearchQuery, String> _f$query = Field(
    'query',
    _$query,
    key: r'q',
  );
  static EkkloLanguage? _$language(FoodSearchQuery v) => v.language;
  static const Field<FoodSearchQuery, EkkloLanguage> _f$language = Field(
    'language',
    _$language,
    key: r'lang',
    opt: true,
  );
  static EkkloFoodOwner? _$owner(FoodSearchQuery v) => v.owner;
  static const Field<FoodSearchQuery, EkkloFoodOwner> _f$owner = Field(
    'owner',
    _$owner,
    opt: true,
  );
  static bool? _$verifiedOnly(FoodSearchQuery v) => v.verifiedOnly;
  static const Field<FoodSearchQuery, bool> _f$verifiedOnly = Field(
    'verifiedOnly',
    _$verifiedOnly,
    key: r'verified_only',
    opt: true,
  );

  @override
  final MappableFields<FoodSearchQuery> fields = const {
    #query: _f$query,
    #language: _f$language,
    #owner: _f$owner,
    #verifiedOnly: _f$verifiedOnly,
  };
  @override
  final bool ignoreNull = true;

  static FoodSearchQuery _instantiate(DecodingData data) {
    return FoodSearchQuery(
      query: data.dec(_f$query),
      language: data.dec(_f$language),
      owner: data.dec(_f$owner),
      verifiedOnly: data.dec(_f$verifiedOnly),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static FoodSearchQuery fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FoodSearchQuery>(map);
  }

  static FoodSearchQuery fromJson(String json) {
    return ensureInitialized().decodeJson<FoodSearchQuery>(json);
  }
}

mixin FoodSearchQueryMappable {
  String toJson() {
    return FoodSearchQueryMapper.ensureInitialized()
        .encodeJson<FoodSearchQuery>(this as FoodSearchQuery);
  }

  Map<String, dynamic> toMap() {
    return FoodSearchQueryMapper.ensureInitialized().encodeMap<FoodSearchQuery>(
      this as FoodSearchQuery,
    );
  }

  FoodSearchQueryCopyWith<FoodSearchQuery, FoodSearchQuery, FoodSearchQuery>
  get copyWith =>
      _FoodSearchQueryCopyWithImpl<FoodSearchQuery, FoodSearchQuery>(
        this as FoodSearchQuery,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return FoodSearchQueryMapper.ensureInitialized().stringifyValue(
      this as FoodSearchQuery,
    );
  }

  @override
  bool operator ==(Object other) {
    return FoodSearchQueryMapper.ensureInitialized().equalsValue(
      this as FoodSearchQuery,
      other,
    );
  }

  @override
  int get hashCode {
    return FoodSearchQueryMapper.ensureInitialized().hashValue(
      this as FoodSearchQuery,
    );
  }
}

extension FoodSearchQueryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FoodSearchQuery, $Out> {
  FoodSearchQueryCopyWith<$R, FoodSearchQuery, $Out> get $asFoodSearchQuery =>
      $base.as((v, t, t2) => _FoodSearchQueryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FoodSearchQueryCopyWith<$R, $In extends FoodSearchQuery, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? query,
    EkkloLanguage? language,
    EkkloFoodOwner? owner,
    bool? verifiedOnly,
  });
  FoodSearchQueryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _FoodSearchQueryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FoodSearchQuery, $Out>
    implements FoodSearchQueryCopyWith<$R, FoodSearchQuery, $Out> {
  _FoodSearchQueryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FoodSearchQuery> $mapper =
      FoodSearchQueryMapper.ensureInitialized();
  @override
  $R call({
    String? query,
    Object? language = $none,
    Object? owner = $none,
    Object? verifiedOnly = $none,
  }) => $apply(
    FieldCopyWithData({
      if (query != null) #query: query,
      if (language != $none) #language: language,
      if (owner != $none) #owner: owner,
      if (verifiedOnly != $none) #verifiedOnly: verifiedOnly,
    }),
  );
  @override
  FoodSearchQuery $make(CopyWithData data) => FoodSearchQuery(
    query: data.get(#query, or: $value.query),
    language: data.get(#language, or: $value.language),
    owner: data.get(#owner, or: $value.owner),
    verifiedOnly: data.get(#verifiedOnly, or: $value.verifiedOnly),
  );

  @override
  FoodSearchQueryCopyWith<$R2, FoodSearchQuery, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _FoodSearchQueryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

