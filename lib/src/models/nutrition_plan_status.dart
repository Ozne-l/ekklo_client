import 'package:dart_mappable/dart_mappable.dart';

part 'nutrition_plan_status.mapper.dart';

@MappableEnum(defaultValue: EkkloNutritionPlanStatus.unknown)
enum EkkloNutritionPlanStatus { draft, pending, published, archived, unknown }
