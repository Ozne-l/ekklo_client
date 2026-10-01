import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/meal_item_draft.dart';

part 'add_meal_items_request.mapper.dart';

@MappableClass()
class AddMealItemsRequest with AddMealItemsRequestMappable {
  const AddMealItemsRequest({
    required this.date,
    required this.name,
    required this.dailyMealItems,
    this.order,
  });

  final String date;
  final String name;
  final int? order;
  final List<EkkloMealItemDraft> dailyMealItems;
}
