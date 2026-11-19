import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/coach_settings.dart';
import 'package:ekklo_client/src/models/hooks.dart';
import 'package:ekklo_client/src/models/user_settings.dart';

part 'user.mapper.dart';

@MappableClass()
class EkkloUser with EkkloUserMappable {
  const EkkloUser({
    required this.id,
    this.settings = const EkkloUserSettings(),
    this.screenCaptureProtection = false,
    this.coachesSettings = const [],
  });

  final String id;
  final EkkloUserSettings settings;
  final bool screenCaptureProtection;

  @MappableField(hook: NullToEmptyListHook())
  final List<EkkloCoachSettings> coachesSettings;
}
