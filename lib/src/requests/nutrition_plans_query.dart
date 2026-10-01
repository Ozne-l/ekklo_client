import 'package:dart_mappable/dart_mappable.dart';

part 'nutrition_plans_query.mapper.dart';

@MappableClass()
class NutritionPlansQuery with NutritionPlansQueryMappable {
  const NutritionPlansQuery({this.light = true});

  final bool light;
}
