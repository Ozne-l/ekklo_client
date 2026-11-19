# ekklo_client

Unofficial Dart client for [Ekklo](https://www.ekklo.com), the coaching app,
acting as a **client account** (the person being coached, not the coach).

> Not affiliated with or endorsed by Ekklo SAS. This package talks to the
> private API the Ekklo mobile app uses. It can break without notice, and
> automating your account may go against Ekklo's terms. Use it on your own
> account, at your own risk, and go easy on their servers.

Dart with `dart:io`: works in Flutter apps (iOS, Android, desktop), scripts
and servers. Not in a browser: the API does not allow cross-origin requests,
and the messaging socket needs a header only `dart:io` can send.

## What it covers

| Area | Calls |
|---|---|
| Session | `login`, automatic token refresh, `clearLocalSession` (local only) |
| Foods | `search` (name or barcode), `byId`, `recent`, `frequent`, `favorites` |
| Your own foods | `createOwn`, `updateOwn`, `deleteOwn` |
| Diary | `forDate`, `history`, `appendItems`, `setManualMacros`, `updateItemQuantity`, `removeItem`, `delete` |
| Coach targets | `nutritionPlans.list` |
| Messaging | `messaging.me`, `conversations`, `messages`, `sendText`, `sendMedia`, `sendVoice`, `presignUpload`, `deleteMessage`, `markRead`, `addReaction`, `removeReaction`, `connectSocket` |

`updateOwn`, `deleteOwn`, `updateItemQuantity`, `removeItem` and `delete`
follow the server's published API description; the other calls were checked
against what the official app sends.

## Install

Not on pub.dev. Depend on the repository:

```yaml
dependencies:
  ekklo_client:
    git:
      url: https://github.com/Ozne-l/ekklo_client
      ref: v0.1.0
```

## Use

```dart
import 'package:ekklo_client/ekklo_client.dart';

final ekklo = EkkloClient(tokenStore: myPersistentStore);
await ekklo.login(email: email, password: password);

final [rice, ...] = await ekklo.foods.search('riz basmati');
await ekklo.meals.appendItems(
  date: DateTime.now(),
  name: 'Déjeuner',
  items: [EkkloMealItemDraft.food(foodId: rice.id, quantity: 150)],
);
```

Things the API does that you would not guess:

- **Meals are identified by day and name.** `appendItems` adds to the meal
  with that name if it exists and creates it otherwise. It is not
  idempotent: read `forDate` first if you might be retrying.
- **Nutrients are per `portion`** (100 g in practice), macronutrients in
  grams, **sodium in milligrams** (`sodiumMilligrams`). Foods typed in by other
  users are not always consistent: some sodium values look like grams.
- **Sign-out is local.** Ekklo has no logout endpoint, so `clearLocalSession`
  only forgets the tokens; the refresh token stays valid until it expires
  (about 14 months).
- **Meal dates are calendar days.** `EkkloDailyMeal.date` is midnight UTC of
  the day the meal belongs to, whatever the server's time zone.
- **`code` is a barcode (EAN)** for packaged foods and a CIQUAL code for
  generic ones.
- **`unknown` enum values** (`EkkloQuantityType.unknown`,
  `EkkloFoodCategory.unknown`, …) only appear when decoding a value this
  client does not know yet. Never send them.
- `search` returns at most 50 results; `createOwn` also adds the food to your
  favorites; `updateItemQuantity(expectedRevision: meal.revision)` fails
  instead of overwriting a concurrent change.

### Messaging

```dart
final [conversation] = await ekklo.messaging.conversations();
var page = await ekklo.messaging.messages(conversation.id);
while (page.hasMore) {
  page = await ekklo.messaging.messages(
    conversation.id,
    beforeId: page.messages.first.id,
  );
}

final socket = await ekklo.messaging.connectSocket();
socket.focusConversation(conversation.id);
socket.events.listen((event) => switch (event) {
  EkkloNewMessage(:final message) => print(message.content),
  _ => null,
});
final closure = await socket.closed;
```

- **Pages are oldest first.** Pass the first (oldest) message of a page as
  `beforeId` to get the next older page, until `hasMore` is false. Ekklo's
  `total` is wrong and not exposed.
- **What a message shows** is `kind`: `text`, `media` (photos and videos,
  each in `media` with its kind, a `mixed` message by file extension),
  `voice` (`audio` and `voice` messages) or `unsupported` (a `content_ref`
  card or a type this client does not know: show it as "open in Ekklo").
  `media` resolves bare keys under `https://assets.ekklo.com/ekklo/`.
  `content` is the text, or the caption of a media message. `internal`
  messages are meant to be hidden.
- **`receivedJson`** is the message or conversation exactly as Ekklo sent
  it, unknown keys included; `EkkloMessageMapper.fromMap` decodes it again.
- **Media are uploaded first**: `presignUpload`, then a binary `PUT` of the
  file to `uploadUrl` with its `Content-Type` and no `Authorization`, then
  `sendMedia` or `sendVoice` with the `publicUrl`. Nothing makes a send
  idempotent: a send repeated after a lost answer makes two messages.
- **Timeouts**: 120 s for `sendMedia`, as Ekklo, 30 s for the other
  messaging calls; a call not answered in time is an
  `EkkloNetworkException`.
- **The socket** sends the access token in an `Authorization` header,
  refreshed first if it is about to expire, to `/api/v1/messaging/ws` on the
  host of the client's `baseUri` (`ws` for an `http` base). `events` decodes
  the known server events and drops the others; `closed` completes with the
  close code when the connection ends, Ekklo's drops included (about every
  60 s). Reconnecting is up to you. Pass `webSocketConnector` to
  `EkkloClient` to connect elsewhere, for example in tests.

### Keeping the session

`EkkloClient` keeps the session in memory unless you pass an
`EkkloTokenStore`. In Flutter, implement it on top of
`flutter_secure_storage`; `EkkloTokens.toJson()` and
`EkkloTokensMapper.fromJson` handle the serialisation. The tokens grant full
access to the account, so store them like a password.

### Errors

Every deliberate error is an `EkkloException`:

- `EkkloAuthException`: `notSignedIn`, `invalidCredentials`, or
  `sessionExpired` (the session was rejected and has been cleared).
- `EkkloApiException`: any other error status, with the server's messages.
  Its subtype `EkkloMessageNotDeletedException` is a `deleteMessage`
  answered with HTTP 500, which Ekklo does for every photo, video and voice
  message today: the message is still there.
- `EkkloNetworkException`: the request never got an answer (no network,
  DNS, TLS). The session is kept.
- `EkkloUnexpectedResponseException`: an answer this client cannot read
  (not JSON, or a missing required field), usually a changed API.

The hierarchy is sealed, so a `switch` over `EkkloException` is exhaustive.

## Try it

```sh
export EKKLO_EMAIL=you@example.com EKKLO_PASSWORD=...
dart run example/main.dart search 3017620422003
dart run example/main.dart meals 2026-10-01
dart run example/main.dart plans
```

The example only reads. It caches the session in `.ekklo_tokens.json`
(git-ignored).

## Develop

```sh
dart pub get
dart run build_runner build   # after changing a model
dart analyze && dart test
```

Tests run against recorded response shapes with made-up data; they never
call Ekklo. Never commit real captures, tokens, or account data.

## License

MIT, see [LICENSE](LICENSE). Not affiliated with or endorsed by Ekklo.
