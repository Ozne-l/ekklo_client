import 'dart:async';
import 'dart:convert';

import 'package:checks/checks.dart';
import 'package:ekklo_client/ekklo_client.dart';
import 'package:fake_async/fake_async.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

import 'support/fake_ekklo.dart';

const _conversations = '/api/v1/messaging/conversations';
const _messages = '$_conversations/conv-1/messages';

Map<String, dynamic> _message(String id, String createdAt) => {
  'id': id,
  'sender_id': 'me-1',
  'content': 'texte $id',
  'message_type': 'text',
  'internal': false,
  'created_at': createdAt,
  'conversation_id': 'conv-1',
  'is_read': true,
};

Future<FakeEkklo> _signedIn(Map<String, Route> routes) async {
  final fake = FakeEkklo(routes);
  await fake.tokenStore.write(validTokens());
  return fake;
}

void main() {
  test('the current user tells whether messaging is on and which coaches '
      'protect their screens', () async {
    final fake = await _signedIn({
      'GET /api/v1/users/me': (_) => json({
        'id': 'me-1',
        'full_name': 'Someone',
        'pending_email_change': null,
        'settings': {'messaging': true, 'workout': true},
        'screen_capture_protection': false,
        'coaches_settings': [
          {'coach_id': 'coach-1', 'screen_capture_protection': true},
        ],
      }),
    });

    final me = await fake.client.messaging.me();

    check(me)
      ..has((u) => u.id, 'id').equals('me-1')
      ..has((u) => u.settings.messaging, 'messaging').isTrue()
      ..has((u) => u.screenCaptureProtection, 'protection').isFalse();
    check(me.coachesSettings).deepEquals([
      const EkkloCoachSettings(
        coachId: 'coach-1',
        screenCaptureProtection: true,
      ),
    ]);
  });

  test('a user without messaging settings has messaging off', () async {
    final fake = await _signedIn({
      'GET /api/v1/users/me': (_) => json({'id': 'me-1'}),
    });

    final me = await fake.client.messaging.me();

    check(me.settings.messaging).isFalse();
    check(me.coachesSettings).isEmpty();
  });

  test('conversations keep their JSON as received and their last messages '
      'without media', () async {
    final conversation = {
      'id': 'conv-1',
      'type': 'one_to_one',
      'can_send': true,
      'unread_count': 2,
      'is_pinned': false,
      'updated_at': '2026-09-01T08:00:00Z',
      'coach': {'id': 'coach-1', 'full_name': 'Coach Test'},
      'customer': {'id': 'me-1', 'full_name': 'Someone'},
      'last_messages': [_message('msg-2', '2026-09-01T08:00:00Z')],
    };
    final fake = await _signedIn({
      'GET $_conversations': (_) => json({
        'conversations': [conversation],
      }),
    });

    final [only] = await fake.client.messaging.conversations();

    check(only)
      ..has((c) => c.canSend, 'canSend').isTrue()
      ..has((c) => c.unreadCount, 'unreadCount').equals(2)
      ..has((c) => c.coach?.fullName, 'coach').equals('Coach Test')
      ..has((c) => c.receivedJson, 'receivedJson').deepEquals(conversation);
    check(only.lastMessages.single)
      ..has((m) => m.kind, 'kind').equals(EkkloMessageKind.text)
      ..has((m) => m.media, 'media').isEmpty();
  });

  group('a page of messages', () {
    late FakeEkklo fake;
    late EkkloMessagePage page;

    setUp(() async {
      fake = await _signedIn({
        'GET $_messages': (_) => jsonFixture('messages_page.json'),
      });
      page = await fake.client.messaging.messages('conv-1');
    });

    EkkloMessage byId(String id) =>
        page.messages.singleWhere((m) => m.id == id);

    test('asks for 50 messages and keeps the server order, oldest first', () {
      check(
        fake.requests.single.url.queryParameters,
      ).deepEquals({'limit': '50'});
      check(page.hasMore).isTrue();
      check([
        for (final m in page.messages) m.id,
      ]).deepEquals([for (var i = 1; i <= 9; i++) 'msg-0$i']);
    });

    test('decodes a text with its reactions and unknown keys', () {
      check(byId('msg-01'))
        ..has((m) => m.kind, 'kind').equals(EkkloMessageKind.text)
        ..has((m) => m.senderId, 'senderId').equals('coach-1')
        ..has(
          (m) => m.createdAt,
          'createdAt',
        ).equals(DateTime.utc(2026, 9, 1, 8, 0, 0, 123, 456))
        ..has((m) => m.reactions, 'reactions').deepEquals([
          const EkkloReaction(emoji: '🔥', count: 2, mine: true),
        ]);
    });

    test('omitted optional keys decode to their absence', () {
      check(byId('msg-02'))
        ..has((m) => m.reactions, 'reactions').isEmpty()
        ..has((m) => m.replyTo, 'replyTo').isNull()
        ..has((m) => m.contentRef, 'contentRef').isNull();
      check(byId('msg-01').mediaUrls).isEmpty();
    });

    test('resolves a bare key under the Ekklo assets and keeps absolute '
        'URLs', () {
      check(byId('msg-02').media).deepEquals([
        EkkloMedia(
          url: Uri.parse(
            'https://assets.ekklo.com/ekklo/global/users/u/message_image/a/b.jpg',
          ),
          kind: EkkloMediaKind.image,
        ),
      ]);
      check(byId('msg-03').media.map((m) => '${m.url}')).deepEquals([
        'https://assets.ekklo.com/ekklo/global/users/u/message_video/a/one.mp4',
        'https://assets.ekklo.com/ekklo/global/users/u/message_video/a/two.mp4',
      ]);
    });

    test('gives each message type its kind', () {
      check({
        for (final m in page.messages)
          m.id: [m.kind.name, for (final media in m.media) media.kind.name],
      }).deepEquals({
        'msg-01': ['text'],
        'msg-02': ['media', 'image'],
        'msg-03': ['media', 'video', 'video'],
        'msg-04': ['voice', 'voice'],
        'msg-05': ['voice', 'voice'],
        'msg-06': ['media', 'video', 'image'],
        'msg-07': ['unsupported'],
        'msg-08': ['unsupported'],
        'msg-09': ['text'],
      });
    });

    test('keeps the caption of a media message, its reply and the internal '
        'flag', () {
      check(byId('msg-03').content).equals('Série 2');
      check(byId('msg-06').replyTo).isNotNull()
        ..has((r) => r.id, 'id').equals('msg-01')
        ..has((r) => r.senderName, 'senderName').equals('Coach Test')
        ..has((r) => r.type, 'type').equals(EkkloMessageType.text)
        ..has((r) => r.deleted, 'deleted').isFalse();
      check(byId('msg-08').type).equals(EkkloMessageType.unknown);
      check(byId('msg-09').internal).isTrue();
    });

    test('keeps each message as received, decodable again', () {
      final {'messages': List<Object?> received} =
          jsonDecode(fixture('messages_page.json')) as Map<String, dynamic>;

      check([
        for (final m in page.messages) m.receivedJson,
      ]).deepEquals(received);
      check(
        EkkloMessageMapper.fromMap(byId('msg-06').receivedJson),
      ).equals(byId('msg-06'));
    });
  });

  test('an older page is asked before a message id', () async {
    final fake = await _signedIn({
      'GET $_messages': (_) =>
          json({'messages': <Object?>[], 'has_more': false}),
    });

    final page = await fake.client.messaging.messages(
      'conv-1',
      limit: 20,
      beforeId: 'msg-01',
    );

    check(
      fake.requests.single.url.queryParameters,
    ).deepEquals({'limit': '20', 'before_id': 'msg-01'});
    check(page.hasMore).isFalse();
  });

  test('a page answered newest first is returned oldest first', () async {
    final fake = await _signedIn({
      'GET $_messages': (_) => json({
        'messages': [
          _message('c', '2026-09-03T00:00:00Z'),
          _message('b', '2026-09-02T00:00:00Z'),
          _message('a', '2026-09-01T00:00:00Z'),
        ],
        'has_more': true,
      }),
    });

    final page = await fake.client.messaging.messages('conv-1');

    check([for (final m in page.messages) m.id]).deepEquals(['a', 'b', 'c']);
  });

  test('a text is sent with its reply and no type', () async {
    final fake = await _signedIn({
      'POST $_messages': (_) => json(
        _message('msg-new', '2026-09-01T09:00:00Z'),
        status: 201,
      ),
    });

    final sent = await fake.client.messaging.sendText(
      'conv-1',
      'Merci',
      replyToId: 'msg-01',
    );
    await fake.client.messaging.sendText('conv-1', 'Encore');

    check([
      for (final request in fake.requests) fake.bodyOf(request),
    ]).deepEquals([
      {'content': 'Merci', 'reply_to_id': 'msg-01'},
      {'content': 'Encore'},
    ]);
    check(sent.id).equals('msg-new');
  });

  test('media are sent without a caption key when there is no text', () async {
    final fake = await _signedIn({
      'POST $_conversations/conv-1/direct-media': (_) => json({
        ..._message('msg-new', '2026-09-01T09:00:00Z'),
        'content': '',
        'message_type': 'mixed',
        'media_urls': [
          'https://assets.ekklo.com/ekklo/x/photo.jpg',
          'https://assets.ekklo.com/ekklo/x/clip.mp4',
        ],
      }, status: 201),
    });
    final medias = [
      EkkloDirectMedia(
        url: Uri.parse('https://assets.ekklo.com/ekklo/x/photo.jpg'),
        mediaType: EkkloDirectMediaType.image,
      ),
      EkkloDirectMedia(
        url: Uri.parse('https://assets.ekklo.com/ekklo/x/clip.mp4'),
        mediaType: EkkloDirectMediaType.video,
      ),
    ];

    final sent = await fake.client.messaging.sendMedia(
      'conv-1',
      medias,
      caption: '',
      replyToId: 'msg-01',
    );
    await fake.client.messaging.sendMedia('conv-1', medias, caption: 'Série');

    final [withoutText, withText] = [
      for (final request in fake.requests) fake.bodyOf(request),
    ];
    check(withoutText).deepEquals({
      'medias': [
        {
          'url': 'https://assets.ekklo.com/ekklo/x/photo.jpg',
          'media_type': 'image',
        },
        {
          'url': 'https://assets.ekklo.com/ekklo/x/clip.mp4',
          'media_type': 'video',
        },
      ],
      'reply_to_id': 'msg-01',
    });
    check(withText['caption']).equals('Série');
    check(sent.kind).equals(EkkloMessageKind.media);
  });

  test('media get 120 seconds to be answered, then fail as a network '
      'error', () {
    fakeAsync((async) {
      final tokenStore = InMemoryEkkloTokenStore();
      final client = EkkloClient(
        httpClient: MockClient((_) => Completer<http.Response>().future),
        tokenStore: tokenStore,
        clock: () => now,
      );
      unawaited(tokenStore.write(validTokens()));
      async.flushMicrotasks();
      Object? failure;
      unawaited(
        client.messaging
            .sendMedia('conv-1', [
              EkkloDirectMedia(
                url: Uri.parse('https://assets.ekklo.com/ekklo/x/clip.mp4'),
                mediaType: EkkloDirectMediaType.video,
              ),
            ])
            .then<void>((_) {}, onError: (Object error) => failure = error),
      );

      async.elapse(const Duration(seconds: 119));
      check(failure).isNull();
      async.elapse(const Duration(seconds: 1));

      check(failure)
          .isA<EkkloNetworkException>()
          .has(
            (e) => e.uri.path,
            'path',
          )
          .equals('$_conversations/conv-1/direct-media');
    });
  });

  test('a voice message sends its whole-second duration', () async {
    final fake = await _signedIn({
      'POST $_conversations/conv-1/voice-message': (_) => json({
        ..._message('msg-new', '2026-09-01T09:00:00Z'),
        'content': '',
        'message_type': 'audio',
        'media_urls': ['https://assets.ekklo.com/ekklo/x/voice.m4a'],
      }, status: 201),
    });

    final sent = await fake.client.messaging.sendVoice(
      'conv-1',
      url: Uri.parse('https://assets.ekklo.com/ekklo/x/voice.m4a'),
      durationSeconds: 6,
    );

    check(fake.bodyOf(fake.requests.single)).deepEquals({
      'url': 'https://assets.ekklo.com/ekklo/x/voice.m4a',
      'duration': 6,
    });
    check(sent.kind).equals(EkkloMessageKind.voice);
  });

  test('an upload is presigned for a conversation', () async {
    final fake = await _signedIn({
      'POST /api/v1/uploads/presigned-url': (_) => json({
        'upload_url': 'https://bucket.example.com/key?X-Amz-Signature=s',
        'file_key': 'ekklo/global/users/u/message_video/a/b.mp4',
        'public_url':
            'https://assets.ekklo.com/ekklo/global/users/u/message_video/a/b.mp4',
        'expires_at': '2026-09-01T10:00:00Z',
      }),
    });

    final upload = await fake.client.messaging.presignUpload(
      fileName: 'clip.mp4',
      fileType: 'video/mp4',
      resourceType: EkkloUploadResourceType.messageVideo,
      resourceId: 'conv-1',
    );

    check(fake.bodyOf(fake.requests.single)).deepEquals({
      'file_name': 'clip.mp4',
      'file_type': 'video/mp4',
      'resource_type': 'message_video',
      'resource_id': 'conv-1',
    });
    check(upload)
      ..has(
        (u) => u.uploadUrl.queryParameters,
        'uploadUrl',
      ).deepEquals({'X-Amz-Signature': 's'})
      ..has((u) => u.fileKey, 'fileKey').endsWith('b.mp4')
      ..has((u) => u.expiresAt, 'expiresAt').equals(
        DateTime.utc(2026, 9, 1, 10),
      );
  });

  group('deleting a message', () {
    const path = '$_messages/msg-02';

    test('succeeds on a 2xx', () async {
      final fake = await _signedIn({
        'DELETE $path': (_) => http.Response('', 204),
      });

      await fake.client.messaging.deleteMessage('conv-1', 'msg-02');

      check(fake.requests.single.body).isEmpty();
    });

    test('that Ekklo answers with an empty 500 is not deleted', () async {
      final fake = await _signedIn({
        'DELETE $path': (_) => http.Response(
          '',
          500,
          headers: {'content-type': 'text/html'},
        ),
      });

      await check(
        fake.client.messaging.deleteMessage('conv-1', 'msg-02'),
      ).throws<EkkloMessageNotDeletedException>(
        (e) => e
          ..has((e) => e.statusCode, 'status').equals(500)
          ..has((e) => e.uri.path, 'path').equals(path),
      );
    });

    test('refused for another reason stays an API error', () async {
      final fake = await _signedIn({
        'DELETE $path': (_) => json({'error': 'forbidden'}, status: 403),
      });

      await check(
        fake.client.messaging.deleteMessage('conv-1', 'msg-02'),
      ).throws<EkkloApiException>(
        (e) => e.not((e) => e.isA<EkkloMessageNotDeletedException>()),
      );
    });
  });

  test('a conversation is marked read without a body', () async {
    final fake = await _signedIn({
      'POST $_conversations/conv-1/read': (_) => http.Response('', 204),
    });

    await fake.client.messaging.markRead('conv-1');

    check(fake.requests.single.body).isEmpty();
  });

  test('a reaction is added and removed with the emoji in the body, and the '
      'server count wins', () async {
    const path = '$_messages/msg-01/reactions';
    final fake = await _signedIn({
      'POST $path': (_) => json({'emoji': '💪', 'count': 2, 'mine': true}),
      'DELETE $path': (_) => json({'emoji': '💪', 'count': 1, 'mine': false}),
    });

    final added = await fake.client.messaging.addReaction(
      'conv-1',
      'msg-01',
      '💪',
    );
    final removed = await fake.client.messaging.removeReaction(
      'conv-1',
      'msg-01',
      '💪',
    );

    final [post, delete] = fake.requests;
    check(delete.method).equals('DELETE');
    check(delete.headers['content-type']).isNotNull().startsWith(
      'application/json',
    );
    check(fake.bodyOf(post)).deepEquals({'emoji': '💪'});
    check(fake.bodyOf(delete)).deepEquals({'emoji': '💪'});
    check(added).equals(const EkkloReaction(emoji: '💪', count: 2, mine: true));
    check(removed).equals(const EkkloReaction(emoji: '💪', count: 1));
  });
}
