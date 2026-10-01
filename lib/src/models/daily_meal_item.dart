import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/food.dart';
import 'package:ekklo_client/src/models/hooks.dart';
import 'package:ekklo_client/src/models/meal_item_type.dart';
import 'package:ekklo_client/src/models/quantity_type.dart';

part 'daily_meal_item.mapper.dart';

@MappableClass()
class EkkloDailyMealItem with EkkloDailyMealItemMappable {
  const EkkloDailyMealItem({
    required this.id,
    required this.itemType,
    required this.quantity,
    required this.quantityType,
    this.foodId,
    this.food,
    this.recipeId,
    this.origin,
    this.createdAt,
    this.updatedAt,
  });

  final String id;
  final EkkloMealItemType itemType;
  final double quantity;
  final EkkloQuantityType quantityType;

  @MappableField(hook: EmptyToNullHook())
  final String? foodId;

  @MappableField(hook: BlankObjectToNullHook())
  final EkkloFood? food;

  @MappableField(hook: EmptyToNullHook())
  final String? recipeId;

  @MappableField(hook: EmptyToNullHook())
  final String? origin;

  final DateTime? createdAt;
  final DateTime? updatedAt;
}
