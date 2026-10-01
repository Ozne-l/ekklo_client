import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/food_category.dart';
import 'package:ekklo_client/src/models/food_source.dart';
import 'package:ekklo_client/src/models/food_unit.dart';
import 'package:ekklo_client/src/models/hooks.dart';
import 'package:ekklo_client/src/models/portion.dart';
import 'package:ekklo_client/src/models/quantity_type.dart';

part 'food.mapper.dart';

@MappableClass()
class EkkloFood with EkkloFoodMappable {
  const EkkloFood({
    required this.id,
    required this.name,
    required this.portion,
    required this.quantityType,
    required this.calories,
    required this.proteins,
    required this.carbs,
    required this.fats,
    required this.fiber,
    required this.sugar,
    required this.sodiumMilligrams,
    required this.category,
    this.brands,
    this.code,
    this.nutriscoreGrade,
    this.foodUnits = const [],
    this.source,
    this.isVerified,
    this.isFavorite,
    this.lastUsedPortion,
    this.createdAt,
    this.updatedAt,
  });

  final String id;
  final String name;
  final double portion;
  final EkkloQuantityType quantityType;
  final double calories;
  final double proteins;
  final double carbs;
  final double fats;
  final double fiber;
  final double sugar;

  @MappableField(key: 'sodium')
  final double sodiumMilligrams;

  final EkkloFoodCategory category;

  @MappableField(hook: EmptyToNullHook())
  final String? brands;

  @MappableField(hook: EmptyToNullHook())
  final String? code;

  @MappableField(hook: EmptyToNullHook())
  final String? nutriscoreGrade;

  @MappableField(hook: NullToEmptyListHook())
  final List<EkkloFoodUnit> foodUnits;

  @MappableField(key: 'from', hook: EmptyToNullHook())
  final EkkloFoodSource? source;

  final bool? isVerified;
  final bool? isFavorite;
  final EkkloPortion? lastUsedPortion;
  final DateTime? createdAt;
  final DateTime? updatedAt;
}
