import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/quantity_type.dart';

part 'food_unit.mapper.dart';

@MappableClass()
class EkkloFoodUnit with EkkloFoodUnitMappable {
  const EkkloFoodUnit({
    required this.quantityType,
    required this.gramsPerUnit,
    this.id,
  });

  final String? id;
  final EkkloQuantityType quantityType;
  final double gramsPerUnit;
}
