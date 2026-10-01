import 'package:dart_mappable/dart_mappable.dart';

part 'daily_meals_query.mapper.dart';

@MappableClass()
class DailyMealsQuery with DailyMealsQueryMappable {
  const DailyMealsQuery({required this.date});

  final String date;
}
