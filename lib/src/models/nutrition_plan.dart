import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/nutrition_plan_status.dart';

part 'nutrition_plan.mapper.dart';

@MappableClass()
class EkkloNutritionPlan with EkkloNutritionPlanMappable {
  const EkkloNutritionPlan({
    required this.id,
    required this.name,
    this.status,
    this.coachId,
    this.defaultMaxCalories,
    this.defaultMaxProteins,
    this.defaultMaxCarbs,
    this.defaultMaxFats,
    this.mealPlansCount,
    this.createdAt,
    this.updatedAt,
  });

  final String id;
  final String name;
  final EkkloNutritionPlanStatus? status;
  final String? coachId;
  final double? defaultMaxCalories;
  final double? defaultMaxProteins;
  final double? defaultMaxCarbs;
  final double? defaultMaxFats;
  final int? mealPlansCount;
  final DateTime? createdAt;
  final DateTime? updatedAt;
}
