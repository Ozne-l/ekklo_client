import 'package:dart_mappable/dart_mappable.dart';

part 'meal_history_query.mapper.dart';

@MappableClass()
class MealHistoryQuery with MealHistoryQueryMappable {
  const MealHistoryQuery({required this.page, required this.limit});

  final int page;
  final int limit;
}
