## Unreleased

- `EkkloMessage.readByOther` (`read_by_other`): whether the other side of the
  conversation read the message; `false` when the key is null or missing.
- Messaging: the current user's messaging settings, conversations, pages of
  messages, text, media and voice sends, upload presigning, deletion
  (`EkkloMessageNotDeletedException` on Ekklo's 500), read marking,
  reactions, and `EkkloMessagingSocket` for live events. A socket that fails
  to connect, a connection reset included, is an `EkkloNetworkException`.
- Once a session expired, calls keep failing with `sessionExpired` (not
  `notSignedIn`) until the next login, token refresh or
  `clearLocalSession()`, so concurrent callers agree on why they failed.
- Requests can carry a timeout; messaging calls use 30 s, 120 s for media.
- The package now requires `dart:io`.
- Every failure is now an `EkkloException`. New: `EkkloNetworkException` (was a
  raw `http.ClientException`) and `EkkloUnexpectedResponseException` (was a
  `FormatException` or `MapperException`).

## 0.1.0

- Client-account login with automatic token refresh.
- Food search, recent/frequent/favorite foods, and your own foods.
- Daily meals: read, add items, manual macros, edit and delete items.
- Coach nutrition targets.
