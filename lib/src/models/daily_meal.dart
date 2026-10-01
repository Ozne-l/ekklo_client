import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/daily_meal_item.dart';
import 'package:ekklo_client/src/models/hooks.dart';

part 'daily_meal.mapper.dart';

@MappableClass()
class EkkloDailyMeal with EkkloDailyMealMappable {
  const EkkloDailyMeal({
    required this.id,
    required this.date,
    required this.name,
    required this.revision,
    this.order,
    this.satietyLevel,
    this.description,
    this.photoUrl,
    this.manualCalories,
    this.manualProteins,
    this.manualCarbs,
    this.manualFats,
    this.items = const [],
    this.createdAt,
    this.updatedAt,
  });

  final String id;

  @MappableField(hook: CalendarDateHook())
  final DateTime date;

  final String name;
  final int revision;
  final int? order;
  final int? satietyLevel;

  @MappableField(hook: EmptyToNullHook())
  final String? description;

  @MappableField(hook: EmptyToNullHook())
  final String? photoUrl;

  final double? manualCalories;
  final double? manualProteins;
  final double? manualCarbs;
  final double? manualFats;

  @MappableField(key: 'daily_meal_items', hook: NullToEmptyListHook())
  final List<EkkloDailyMealItem> items;

  final DateTime? createdAt;
  final DateTime? updatedAt;
}
