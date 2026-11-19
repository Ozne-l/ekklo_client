import 'package:dart_mappable/dart_mappable.dart';

part 'user_settings.mapper.dart';

@MappableClass()
class EkkloUserSettings with EkkloUserSettingsMappable {
  const EkkloUserSettings({this.messaging = false});

  final bool messaging;
}
