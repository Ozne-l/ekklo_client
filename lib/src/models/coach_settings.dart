import 'package:dart_mappable/dart_mappable.dart';

part 'coach_settings.mapper.dart';

@MappableClass()
class EkkloCoachSettings with EkkloCoachSettingsMappable {
  const EkkloCoachSettings({
    required this.coachId,
    this.screenCaptureProtection = false,
  });

  final String coachId;
  final bool screenCaptureProtection;
}
