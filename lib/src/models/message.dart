import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/hooks.dart';
import 'package:ekklo_client/src/models/media.dart';
import 'package:ekklo_client/src/models/media_kind.dart';
import 'package:ekklo_client/src/models/message_kind.dart';
import 'package:ekklo_client/src/models/message_type.dart';
import 'package:ekklo_client/src/models/reaction.dart';
import 'package:ekklo_client/src/models/reply_to.dart';

part 'message.mapper.dart';

@MappableClass(hook: ReceivedJsonHook())
class EkkloMessage with EkkloMessageMappable {
  const EkkloMessage({
    required this.id,
    required this.conversationId,
    required this.senderId,
    required this.type,
    required this.createdAt,
    this.content = '',
    this.mediaUrls = const [],
    this.internal = false,
    this.readByOther = false,
    this.replyTo,
    this.reactions = const [],
    this.contentRef,
    this.receivedJson = const {},
  });

  static const assetsBase = 'https://assets.ekklo.com/ekklo/';

  final String id;
  final String conversationId;
  final String senderId;

  @MappableField(key: 'message_type')
  final EkkloMessageType type;

  final DateTime createdAt;

  @MappableField(hook: NullToEmptyStringHook())
  final String content;

  @MappableField(hook: NullToEmptyListHook())
  final List<String> mediaUrls;

  final bool internal;

  @MappableField(hook: NullToFalseHook())
  final bool readByOther;

  final EkkloReplyTo? replyTo;

  @MappableField(hook: NullToEmptyListHook())
  final List<EkkloReaction> reactions;

  final Map<String, dynamic>? contentRef;

  @MappableField(key: ReceivedJsonHook.key)
  final Map<String, dynamic> receivedJson;

  EkkloMessageKind get kind => switch ((type, contentRef, _resolvedMedia)) {
    (_, _?, _) ||
    (EkkloMessageType.unknown, _, _) => EkkloMessageKind.unsupported,
    (EkkloMessageType.text, _, _) => EkkloMessageKind.text,
    (_, _, null || []) => EkkloMessageKind.unsupported,
    (EkkloMessageType.audio || EkkloMessageType.voice, _, _) =>
      EkkloMessageKind.voice,
    _ => EkkloMessageKind.media,
  };

  List<EkkloMedia> get media => switch (kind) {
    EkkloMessageKind.media ||
    EkkloMessageKind.voice => _resolvedMedia ?? const [],
    EkkloMessageKind.text || EkkloMessageKind.unsupported => const [],
  };

  List<EkkloMedia>? get _resolvedMedia {
    final media = <EkkloMedia>[];
    for (final key in mediaUrls) {
      final url = _resolve(key);
      final kind = switch ((type, url)) {
        (_, null) => null,
        (EkkloMessageType.image, _) => EkkloMediaKind.image,
        (EkkloMessageType.video, _) => EkkloMediaKind.video,
        (EkkloMessageType.audio || EkkloMessageType.voice, _) =>
          EkkloMediaKind.voice,
        (EkkloMessageType.mixed, final Uri url) => _visualKindOf(url),
        (EkkloMessageType.text || EkkloMessageType.unknown, _) => null,
      };
      switch ((url, kind)) {
        case (final Uri url, final EkkloMediaKind kind):
          media.add(EkkloMedia(url: url, kind: kind));
        case _:
          return null;
      }
    }
    return media;
  }

  static Uri? _resolve(String key) => switch (key.contains('://')) {
    true => Uri.tryParse(key),
    false => Uri.tryParse(
      '$assetsBase${key.replaceFirst(RegExp('^/+'), '')}',
    ),
  };

  static EkkloMediaKind? _visualKindOf(Uri url) {
    final name = url.pathSegments.lastOrNull ?? '';
    final dot = name.lastIndexOf('.');
    return switch (dot < 0 ? '' : name.substring(dot + 1).toLowerCase()) {
      'jpg' ||
      'jpeg' ||
      'png' ||
      'gif' ||
      'webp' ||
      'heic' ||
      'heif' => EkkloMediaKind.image,
      'mp4' || 'mov' || 'm4v' || 'webm' => EkkloMediaKind.video,
      _ => null,
    };
  }
}
