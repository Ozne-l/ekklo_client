import 'package:dart_mappable/dart_mappable.dart';

part 'meal_item_type.mapper.dart';

@MappableEnum(defaultValue: EkkloMealItemType.unknown)
enum EkkloMealItemType { food, recipe, unknown }
