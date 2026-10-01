import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/food_category.dart';
import 'package:ekklo_client/src/models/food_unit_draft.dart';
import 'package:ekklo_client/src/models/quantity_type.dart';

part 'food_draft.mapper.dart';

@MappableClass()
class EkkloFoodDraft with EkkloFoodDraftMappable {
  const EkkloFoodDraft({
    required this.name,
    required this.category,
    required this.calories,
    required this.proteins,
    required this.carbs,
    required this.fats,
    required this.sugar,
    required this.sodiumMilligrams,
    this.portion = 100,
    this.quantityType = EkkloQuantityType.grams,
    this.fiber,
    this.brands,
    this.code,
    this.nutriscoreGrade,
    this.foodUnits,
  });

  final String name;
  final EkkloFoodCategory category;
  final double portion;
  final EkkloQuantityType quantityType;
  final double calories;
  final double proteins;
  final double carbs;
  final double fats;
  final double sugar;

  @MappableField(key: 'sodium')
  final double sodiumMilligrams;

  final double? fiber;
  final String? brands;
  final String? code;
  final String? nutriscoreGrade;
  final List<EkkloFoodUnitDraft>? foodUnits;
}
