import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/quantity_type.dart';

part 'food_unit_draft.mapper.dart';

@MappableClass()
class EkkloFoodUnitDraft with EkkloFoodUnitDraftMappable {
  const EkkloFoodUnitDraft({
    required this.quantityType,
    required this.gramsPerUnit,
  });

  final EkkloQuantityType quantityType;
  final double gramsPerUnit;
}
