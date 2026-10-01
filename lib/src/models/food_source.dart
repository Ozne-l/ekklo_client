import 'package:dart_mappable/dart_mappable.dart';

part 'food_source.mapper.dart';

@MappableEnum(defaultValue: EkkloFoodSource.unknown)
enum EkkloFoodSource { ekklo, ciqual, openfoodfacts, unknown }
