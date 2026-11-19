import 'package:dart_mappable/dart_mappable.dart';

part 'message_type.mapper.dart';

@MappableEnum(defaultValue: EkkloMessageType.unknown)
enum EkkloMessageType { text, image, video, audio, voice, mixed, unknown }
