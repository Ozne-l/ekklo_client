import 'package:dart_mappable/dart_mappable.dart';

part 'macros.mapper.dart';

@MappableClass()
class EkkloMacros with EkkloMacrosMappable {
  const EkkloMacros({
    required this.calories,
    required this.proteins,
    required this.carbs,
    required this.fats,
  });

  final double calories;
  final double proteins;
  final double carbs;
  final double fats;
}
