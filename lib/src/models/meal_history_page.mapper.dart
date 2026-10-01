// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'meal_history_page.dart';

class EkkloMealHistoryPageMapper extends ClassMapperBase<EkkloMealHistoryPage> {
  EkkloMealHistoryPageMapper._();

  static EkkloMealHistoryPageMapper? _instance;
  static EkkloMealHistoryPageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloMealHistoryPageMapper._());
      EkkloDailyMealMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EkkloMealHistoryPage';

  static int _$currentPage(EkkloMealHistoryPage v) => v.currentPage;
  static const Field<EkkloMealHistoryPage, int> _f$currentPage = Field(
    'currentPage',
    _$currentPage,
    key: r'current_page',
  );
  static bool _$hasNext(EkkloMealHistoryPage v) => v.hasNext;
  static const Field<EkkloMealHistoryPage, bool> _f$hasNext = Field(
    'hasNext',
    _$hasNext,
    key: r'has_next',
  );
  static bool _$hasPrev(EkkloMealHistoryPage v) => v.hasPrev;
  static const Field<EkkloMealHistoryPage, bool> _f$hasPrev = Field(
    'hasPrev',
    _$hasPrev,
    key: r'has_prev',
  );
  static List<EkkloDailyMeal> _$items(EkkloMealHistoryPage v) => v.items;
  static const Field<EkkloMealHistoryPage, List<EkkloDailyMeal>> _f$items =
      Field(
        'items',
        _$items,
        opt: true,
        def: const [],
        hook: NullToEmptyListHook(),
      );

  @override
  final MappableFields<EkkloMealHistoryPage> fields = const {
    #currentPage: _f$currentPage,
    #hasNext: _f$hasNext,
    #hasPrev: _f$hasPrev,
    #items: _f$items,
  };
  @override
  final bool ignoreNull = true;

  static EkkloMealHistoryPage _instantiate(DecodingData data) {
    return EkkloMealHistoryPage(
      currentPage: data.dec(_f$currentPage),
      hasNext: data.dec(_f$hasNext),
      hasPrev: data.dec(_f$hasPrev),
      items: data.dec(_f$items),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EkkloMealHistoryPage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EkkloMealHistoryPage>(map);
  }

  static EkkloMealHistoryPage fromJson(String json) {
    return ensureInitialized().decodeJson<EkkloMealHistoryPage>(json);
  }
}

mixin EkkloMealHistoryPageMappable {
  String toJson() {
    return EkkloMealHistoryPageMapper.ensureInitialized()
        .encodeJson<EkkloMealHistoryPage>(this as EkkloMealHistoryPage);
  }

  Map<String, dynamic> toMap() {
    return EkkloMealHistoryPageMapper.ensureInitialized()
        .encodeMap<EkkloMealHistoryPage>(this as EkkloMealHistoryPage);
  }

  EkkloMealHistoryPageCopyWith<
    EkkloMealHistoryPage,
    EkkloMealHistoryPage,
    EkkloMealHistoryPage
  >
  get copyWith =>
      _EkkloMealHistoryPageCopyWithImpl<
        EkkloMealHistoryPage,
        EkkloMealHistoryPage
      >(this as EkkloMealHistoryPage, $identity, $identity);
  @override
  String toString() {
    return EkkloMealHistoryPageMapper.ensureInitialized().stringifyValue(
      this as EkkloMealHistoryPage,
    );
  }

  @override
  bool operator ==(Object other) {
    return EkkloMealHistoryPageMapper.ensureInitialized().equalsValue(
      this as EkkloMealHistoryPage,
      other,
    );
  }

  @override
  int get hashCode {
    return EkkloMealHistoryPageMapper.ensureInitialized().hashValue(
      this as EkkloMealHistoryPage,
    );
  }
}

extension EkkloMealHistoryPageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EkkloMealHistoryPage, $Out> {
  EkkloMealHistoryPageCopyWith<$R, EkkloMealHistoryPage, $Out>
  get $asEkkloMealHistoryPage => $base.as(
    (v, t, t2) => _EkkloMealHistoryPageCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class EkkloMealHistoryPageCopyWith<
  $R,
  $In extends EkkloMealHistoryPage,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    EkkloDailyMeal,
    EkkloDailyMealCopyWith<$R, EkkloDailyMeal, EkkloDailyMeal>
  >
  get items;
  $R call({
    int? currentPage,
    bool? hasNext,
    bool? hasPrev,
    List<EkkloDailyMeal>? items,
  });
  EkkloMealHistoryPageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EkkloMealHistoryPageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EkkloMealHistoryPage, $Out>
    implements EkkloMealHistoryPageCopyWith<$R, EkkloMealHistoryPage, $Out> {
  _EkkloMealHistoryPageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EkkloMealHistoryPage> $mapper =
      EkkloMealHistoryPageMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    EkkloDailyMeal,
    EkkloDailyMealCopyWith<$R, EkkloDailyMeal, EkkloDailyMeal>
  >
  get items => ListCopyWith(
    $value.items,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(items: v),
  );
  @override
  $R call({
    int? currentPage,
    bool? hasNext,
    bool? hasPrev,
    List<EkkloDailyMeal>? items,
  }) => $apply(
    FieldCopyWithData({
      if (currentPage != null) #currentPage: currentPage,
      if (hasNext != null) #hasNext: hasNext,
      if (hasPrev != null) #hasPrev: hasPrev,
      if (items != null) #items: items,
    }),
  );
  @override
  EkkloMealHistoryPage $make(CopyWithData data) => EkkloMealHistoryPage(
    currentPage: data.get(#currentPage, or: $value.currentPage),
    hasNext: data.get(#hasNext, or: $value.hasNext),
    hasPrev: data.get(#hasPrev, or: $value.hasPrev),
    items: data.get(#items, or: $value.items),
  );

  @override
  EkkloMealHistoryPageCopyWith<$R2, EkkloMealHistoryPage, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _EkkloMealHistoryPageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

