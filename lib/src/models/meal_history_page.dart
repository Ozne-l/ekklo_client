import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/daily_meal.dart';
import 'package:ekklo_client/src/models/hooks.dart';

part 'meal_history_page.mapper.dart';

@MappableClass()
class EkkloMealHistoryPage with EkkloMealHistoryPageMappable {
  const EkkloMealHistoryPage({
    required this.currentPage,
    required this.hasNext,
    required this.hasPrev,
    this.items = const [],
  });

  final int currentPage;
  final bool hasNext;
  final bool hasPrev;

  @MappableField(hook: NullToEmptyListHook())
  final List<EkkloDailyMeal> items;
}
