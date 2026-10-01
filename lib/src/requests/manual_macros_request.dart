import 'package:dart_mappable/dart_mappable.dart';

part 'manual_macros_request.mapper.dart';

@MappableClass()
class ManualMacrosRequest with ManualMacrosRequestMappable {
  const ManualMacrosRequest({
    required this.date,
    required this.name,
    required this.manualCalories,
    required this.manualProteins,
    required this.manualCarbs,
    required this.manualFats,
  });

  final String date;
  final String name;
  final double manualCalories;
  final double manualProteins;
  final double manualCarbs;
  final double manualFats;
}
