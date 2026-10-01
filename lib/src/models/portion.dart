import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/quantity_type.dart';

part 'portion.mapper.dart';

@MappableClass()
class EkkloPortion with EkkloPortionMappable {
  const EkkloPortion({required this.quantity, required this.quantityType});

  final double quantity;
  final EkkloQuantityType quantityType;
}
