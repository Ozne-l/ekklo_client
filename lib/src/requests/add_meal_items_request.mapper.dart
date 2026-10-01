// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'add_meal_items_request.dart';

class AddMealItemsRequestMapper extends ClassMapperBase<AddMealItemsRequest> {
  AddMealItemsRequestMapper._();

  static AddMealItemsRequestMapper? _instance;
  static AddMealItemsRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AddMealItemsRequestMapper._());
      EkkloMealItemDraftMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AddMealItemsRequest';

  static String _$date(AddMealItemsRequest v) => v.date;
  static const Field<AddMealItemsRequest, String> _f$date = Field(
    'date',
    _$date,
  );
  static String _$name(AddMealItemsRequest v) => v.name;
  static const Field<AddMealItemsRequest, String> _f$name = Field(
    'name',
    _$name,
  );
  static List<EkkloMealItemDraft> _$dailyMealItems(AddMealItemsRequest v) =>
      v.dailyMealItems;
  static const Field<AddMealItemsRequest, List<EkkloMealItemDraft>>
  _f$dailyMealItems = Field(
    'dailyMealItems',
    _$dailyMealItems,
    key: r'daily_meal_items',
  );
  static int? _$order(AddMealItemsRequest v) => v.order;
  static const Field<AddMealItemsRequest, int> _f$order = Field(
    'order',
    _$order,
    opt: true,
  );

  @override
  final MappableFields<AddMealItemsRequest> fields = const {
    #date: _f$date,
    #name: _f$name,
    #dailyMealItems: _f$dailyMealItems,
    #order: _f$order,
  };
  @override
  final bool ignoreNull = true;

  static AddMealItemsRequest _instantiate(DecodingData data) {
    return AddMealItemsRequest(
      date: data.dec(_f$date),
      name: data.dec(_f$name),
      dailyMealItems: data.dec(_f$dailyMealItems),
      order: data.dec(_f$order),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static AddMealItemsRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AddMealItemsRequest>(map);
  }

  static AddMealItemsRequest fromJson(String json) {
    return ensureInitialized().decodeJson<AddMealItemsRequest>(json);
  }
}

mixin AddMealItemsRequestMappable {
  String toJson() {
    return AddMealItemsRequestMapper.ensureInitialized()
        .encodeJson<AddMealItemsRequest>(this as AddMealItemsRequest);
  }

  Map<String, dynamic> toMap() {
    return AddMealItemsRequestMapper.ensureInitialized()
        .encodeMap<AddMealItemsRequest>(this as AddMealItemsRequest);
  }

  AddMealItemsRequestCopyWith<
    AddMealItemsRequest,
    AddMealItemsRequest,
    AddMealItemsRequest
  >
  get copyWith =>
      _AddMealItemsRequestCopyWithImpl<
        AddMealItemsRequest,
        AddMealItemsRequest
      >(this as AddMealItemsRequest, $identity, $identity);
  @override
  String toString() {
    return AddMealItemsRequestMapper.ensureInitialized().stringifyValue(
      this as AddMealItemsRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return AddMealItemsRequestMapper.ensureInitialized().equalsValue(
      this as AddMealItemsRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return AddMealItemsRequestMapper.ensureInitialized().hashValue(
      this as AddMealItemsRequest,
    );
  }
}

extension AddMealItemsRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AddMealItemsRequest, $Out> {
  AddMealItemsRequestCopyWith<$R, AddMealItemsRequest, $Out>
  get $asAddMealItemsRequest => $base.as(
    (v, t, t2) => _AddMealItemsRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class AddMealItemsRequestCopyWith<
  $R,
  $In extends AddMealItemsRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    EkkloMealItemDraft,
    EkkloMealItemDraftCopyWith<$R, EkkloMealItemDraft, EkkloMealItemDraft>
  >
  get dailyMealItems;
  $R call({
    String? date,
    String? name,
    List<EkkloMealItemDraft>? dailyMealItems,
    int? order,
  });
  AddMealItemsRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _AddMealItemsRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AddMealItemsRequest, $Out>
    implements AddMealItemsRequestCopyWith<$R, AddMealItemsRequest, $Out> {
  _AddMealItemsRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AddMealItemsRequest> $mapper =
      AddMealItemsRequestMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    EkkloMealItemDraft,
    EkkloMealItemDraftCopyWith<$R, EkkloMealItemDraft, EkkloMealItemDraft>
  >
  get dailyMealItems => ListCopyWith(
    $value.dailyMealItems,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(dailyMealItems: v),
  );
  @override
  $R call({
    String? date,
    String? name,
    List<EkkloMealItemDraft>? dailyMealItems,
    Object? order = $none,
  }) => $apply(
    FieldCopyWithData({
      if (date != null) #date: date,
      if (name != null) #name: name,
      if (dailyMealItems != null) #dailyMealItems: dailyMealItems,
      if (order != $none) #order: order,
    }),
  );
  @override
  AddMealItemsRequest $make(CopyWithData data) => AddMealItemsRequest(
    date: data.get(#date, or: $value.date),
    name: data.get(#name, or: $value.name),
    dailyMealItems: data.get(#dailyMealItems, or: $value.dailyMealItems),
    order: data.get(#order, or: $value.order),
  );

  @override
  AddMealItemsRequestCopyWith<$R2, AddMealItemsRequest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _AddMealItemsRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

