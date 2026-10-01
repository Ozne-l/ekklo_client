// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'food_category.dart';

class EkkloFoodCategoryMapper extends EnumMapper<EkkloFoodCategory> {
  EkkloFoodCategoryMapper._();

  static EkkloFoodCategoryMapper? _instance;
  static EkkloFoodCategoryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EkkloFoodCategoryMapper._());
    }
    return _instance!;
  }

  static EkkloFoodCategory fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  EkkloFoodCategory decode(dynamic value) {
    switch (value) {
      case r'fruits':
        return EkkloFoodCategory.fruits;
      case r'vegetables':
        return EkkloFoodCategory.vegetables;
      case r'meats':
        return EkkloFoodCategory.meats;
      case r'poultry':
        return EkkloFoodCategory.poultry;
      case 'fish and Seafood':
        return EkkloFoodCategory.fishAndSeafood;
      case 'eggs and Dairy Products':
        return EkkloFoodCategory.eggsAndDairyProducts;
      case r'vegan':
        return EkkloFoodCategory.vegan;
      case r'grains':
        return EkkloFoodCategory.grains;
      case r'fats':
        return EkkloFoodCategory.fats;
      case 'condiments, Spices, and Spreads':
        return EkkloFoodCategory.condimentsSpicesAndSpreads;
      case 'sweets and Desserts':
        return EkkloFoodCategory.sweetsAndDesserts;
      case r'beverages':
        return EkkloFoodCategory.beverages;
      case r'supplements':
        return EkkloFoodCategory.supplements;
      case 'fast Food / Restaurants':
        return EkkloFoodCategory.fastFoodRestaurants;
      case r'starches':
        return EkkloFoodCategory.starches;
      case 'starchy foods':
        return EkkloFoodCategory.starchyFoods;
      case 'gluten free':
        return EkkloFoodCategory.glutenFree;
      case 'nuts and seeds':
        return EkkloFoodCategory.nutsAndSeeds;
      case 'plant proteins':
        return EkkloFoodCategory.plantProteins;
      case 'dietary supplements':
        return EkkloFoodCategory.dietarySupplements;
      case r'other':
        return EkkloFoodCategory.other;
      case 'generic group':
        return EkkloFoodCategory.genericGroup;
      case r'unknown':
        return EkkloFoodCategory.unknown;
      default:
        return EkkloFoodCategory.values[22];
    }
  }

  @override
  dynamic encode(EkkloFoodCategory self) {
    switch (self) {
      case EkkloFoodCategory.fruits:
        return r'fruits';
      case EkkloFoodCategory.vegetables:
        return r'vegetables';
      case EkkloFoodCategory.meats:
        return r'meats';
      case EkkloFoodCategory.poultry:
        return r'poultry';
      case EkkloFoodCategory.fishAndSeafood:
        return 'fish and Seafood';
      case EkkloFoodCategory.eggsAndDairyProducts:
        return 'eggs and Dairy Products';
      case EkkloFoodCategory.vegan:
        return r'vegan';
      case EkkloFoodCategory.grains:
        return r'grains';
      case EkkloFoodCategory.fats:
        return r'fats';
      case EkkloFoodCategory.condimentsSpicesAndSpreads:
        return 'condiments, Spices, and Spreads';
      case EkkloFoodCategory.sweetsAndDesserts:
        return 'sweets and Desserts';
      case EkkloFoodCategory.beverages:
        return r'beverages';
      case EkkloFoodCategory.supplements:
        return r'supplements';
      case EkkloFoodCategory.fastFoodRestaurants:
        return 'fast Food / Restaurants';
      case EkkloFoodCategory.starches:
        return r'starches';
      case EkkloFoodCategory.starchyFoods:
        return 'starchy foods';
      case EkkloFoodCategory.glutenFree:
        return 'gluten free';
      case EkkloFoodCategory.nutsAndSeeds:
        return 'nuts and seeds';
      case EkkloFoodCategory.plantProteins:
        return 'plant proteins';
      case EkkloFoodCategory.dietarySupplements:
        return 'dietary supplements';
      case EkkloFoodCategory.other:
        return r'other';
      case EkkloFoodCategory.genericGroup:
        return 'generic group';
      case EkkloFoodCategory.unknown:
        return r'unknown';
    }
  }
}

extension EkkloFoodCategoryMapperExtension on EkkloFoodCategory {
  dynamic toValue() {
    EkkloFoodCategoryMapper.ensureInitialized();
    return MapperContainer.globals.toValue<EkkloFoodCategory>(this);
  }
}

