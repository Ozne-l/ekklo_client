## Unreleased

- Every failure is now an `EkkloException`. New: `EkkloNetworkException` (was a
  raw `http.ClientException`) and `EkkloUnexpectedResponseException` (was a
  `FormatException` or `MapperException`).

## 0.1.0

- Client-account login with automatic token refresh.
- Food search, recent/frequent/favorite foods, and your own foods.
- Daily meals: read, add items, manual macros, edit and delete items.
- Coach nutrition targets.
