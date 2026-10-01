import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/meal_item_type.dart';
import 'package:ekklo_client/src/models/quantity_type.dart';

part 'meal_item_draft.mapper.dart';

@MappableClass()
class EkkloMealItemDraft with EkkloMealItemDraftMappable {
  const EkkloMealItemDraft.food({
    required this.foodId,
    required this.quantity,
    this.quantityType = EkkloQuantityType.grams,
  });

  @MappableField()
  String get itemType => EkkloMealItemType.food.toValue();
  final String foodId;
  final double quantity;
  final EkkloQuantityType quantityType;
}
