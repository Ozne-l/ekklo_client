# ekklo_client

Unofficial Dart client for [Ekklo](https://www.ekklo.com), the coaching app,
acting as a **client account** (the person being coached, not the coach).

> Not affiliated with or endorsed by Ekklo SAS. This package talks to the
> private API the Ekklo mobile app uses. It can break without notice, and
> automating your account may go against Ekklo's terms. Use it on your own
> account, at your own risk, and go easy on their servers.

Pure Dart: works in Flutter apps (iOS, Android, desktop), scripts and servers.
Not in a browser: the API does not allow cross-origin requests.

## What it covers

| Area | Calls |
|---|---|
| Session | `login`, automatic token refresh, `clearLocalSession` (local only) |
| Foods | `search` (name or barcode), `byId`, `recent`, `frequent`, `favorites` |
| Your own foods | `createOwn`, `updateOwn`, `deleteOwn` |
| Diary | `forDate`, `history`, `appendItems`, `setManualMacros`, `updateItemQuantity`, `removeItem`, `delete` |
| Coach targets | `nutritionPlans.list` |

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

Network failures surface as `http.ClientException`, and a response this
client cannot decode as a `MapperException`.

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
