import 'package:dart_mappable/dart_mappable.dart';

part 'food_category.mapper.dart';

@MappableEnum(defaultValue: EkkloFoodCategory.unknown)
enum EkkloFoodCategory {
  fruits,
  vegetables,
  meats,
  poultry,
  @MappableValue('fish and Seafood')
  fishAndSeafood,
  @MappableValue('eggs and Dairy Products')
  eggsAndDairyProducts,
  vegan,
  grains,
  fats,
  @MappableValue('condiments, Spices, and Spreads')
  condimentsSpicesAndSpreads,
  @MappableValue('sweets and Desserts')
  sweetsAndDesserts,
  beverages,
  supplements,
  @MappableValue('fast Food / Restaurants')
  fastFoodRestaurants,
  starches,
  @MappableValue('starchy foods')
  starchyFoods,
  @MappableValue('gluten free')
  glutenFree,
  @MappableValue('nuts and seeds')
  nutsAndSeeds,
  @MappableValue('plant proteins')
  plantProteins,
  @MappableValue('dietary supplements')
  dietarySupplements,
  other,
  @MappableValue('generic group')
  genericGroup,
  unknown,
}
