import 'package:dart_mappable/dart_mappable.dart';

part 'quantity_type.mapper.dart';

@MappableEnum(defaultValue: EkkloQuantityType.unknown)
enum EkkloQuantityType {
  grams,
  cup,
  @MappableValue('1/2 cup')
  halfCup,
  @MappableValue('1/3 cup')
  thirdCup,
  @MappableValue('1/4 cup')
  quarterCup,
  ml,
  tablespoon,
  teaspoon,
  pieces,
  kilograms,
  liters,
  centiliters,
  whole,
  slice,
  portion,
  can,
  glass,
  unknown,
}
