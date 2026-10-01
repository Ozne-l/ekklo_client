import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/quantity_type.dart';

part 'item_quantity_request.mapper.dart';

@MappableClass()
class ItemQuantityRequest with ItemQuantityRequestMappable {
  const ItemQuantityRequest({
    required this.quantity,
    this.quantityType,
    this.expectedRevision,
  });

  final double quantity;
  final EkkloQuantityType? quantityType;
  final int? expectedRevision;
}
