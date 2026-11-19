import 'package:checks/checks.dart';
import 'package:ekklo_client/ekklo_client.dart';
import 'package:test/test.dart';

import 'support/fake_ekklo.dart';

const _search = 'GET /api/v1/nutritions/food-items/search';
const _login = 'POST /api/v1/auth/login';
const _refresh = 'POST /api/v1/auth/login/refresh_token';

void main() {
  test(
    'login sends a mobile login, then requests carry its access token',
    () async {
      final tokens = validTokens();
      final fake = FakeEkklo({
        _login: (_) => json({
          'access_token': tokens.accessToken,
          'refresh_token': tokens.refreshToken,
          'role': 'customer',
          'first_login': false,
        }),
        _search: (_) => json([]),
      });

      await fake.client.login(email: 'me@example.com', password: 'secret');
      await fake.client.foods.search('riz');

      final login = fake.to('POST', '/api/v1/auth/login').single;
      check(login.url.queryParameters).deepEquals({'mobile': 'true'});
      check(fake.bodyOf(login)).deepEquals({
        'email': 'me@example.com',
        'password': 'secret',
        'type': 'mobile',
      });
      check(
        fake.to('GET', '/api/v1/nutritions/food-items/search').single.headers,
      )['authorization'].equals('Bearer ${tokens.accessToken}');
    },
  );

  test('rejected credentials surface the server messages', () async {
    final fake = FakeEkklo({
      _login: (_) => json({'error': 'invalid credentials'}, status: 401),
    });

    await check(
      fake.client.login(email: 'me@example.com', password: 'wrong'),
    ).throws<EkkloAuthException>(
      (e) => e
        ..has((e) => e.failure, 'failure').equals(
          EkkloAuthFailure.invalidCredentials,
        )
        ..has((e) => e.errors, 'errors').deepEquals(['invalid credentials']),
    );
    check(await fake.client.isSignedIn).isFalse();
  });

  test('no request is sent while signed out', () async {
    final fake = FakeEkklo({});

    await check(fake.client.foods.search('riz')).throws<EkkloAuthException>(
      (e) => e
          .has((e) => e.failure, 'failure')
          .equals(EkkloAuthFailure.notSignedIn),
    );
    check(fake.requests).isEmpty();
  });

  test('an access token expiring within a minute is refreshed once, even for '
      'concurrent calls', () async {
    final refreshed = validTokens(subject: 'second');
    final fake = FakeEkklo({
      _refresh: (_) => json({
        'access_token': refreshed.accessToken,
        'refresh_token': refreshed.refreshToken,
      }),
      _search: (_) => json([]),
    });
    await fake.tokenStore.write(
      EkkloTokens(
        accessToken: jwt(expiresAt: now.add(const Duration(seconds: 30))),
        refreshToken: 'refresh-first',
      ),
    );

    final calls = [
      fake.client.foods.search('riz'),
      fake.client.foods.search('pâtes'),
    ];
    await Future.wait(calls);

    final refreshes = fake.to('POST', '/api/v1/auth/login/refresh_token');
    check(refreshes).length.equals(1);
    check(
      fake.bodyOf(refreshes.single),
    ).deepEquals({'refresh_token': 'refresh-first'});
    check(
      fake
          .to('GET', '/api/v1/nutritions/food-items/search')
          .map((r) => r.headers['authorization']),
    ).every((h) => h.equals('Bearer ${refreshed.accessToken}'));
    check(await fake.tokenStore.read())
        .isNotNull()
        .has((t) => t.accessToken, 'accessToken')
        .equals(refreshed.accessToken);
  });

  test(
    'a rejected session is refreshed and the request retried once',
    () async {
      final refreshed = validTokens(subject: 'second');
      final fake = FakeEkklo({
        _refresh: (_) => json({
          'access_token': refreshed.accessToken,
          'refresh_token': refreshed.refreshToken,
        }),
        _search: (request) =>
            request.headers['authorization'] ==
                'Bearer ${refreshed.accessToken}'
            ? json([])
            : json({
                'errors': ['unauthorized'],
              }, status: 401),
      });
      await fake.tokenStore.write(validTokens());

      await fake.client.foods.search('riz');

      check(
        fake.to('GET', '/api/v1/nutritions/food-items/search'),
      ).length.equals(2);
    },
  );

  test(
    'the refresh token is kept when the refresh response omits it',
    () async {
      final fake = FakeEkklo({
        _refresh: (_) =>
            json({'access_token': validTokens(subject: 'x').accessToken}),
        _search: (_) => json([]),
      });
      await fake.tokenStore.write(
        EkkloTokens(
          accessToken: jwt(expiresAt: now),
          refreshToken: 'refresh-first',
        ),
      );

      await fake.client.foods.search('riz');

      check(await fake.tokenStore.read())
          .isNotNull()
          .has((t) => t.refreshToken, 'refreshToken')
          .equals('refresh-first');
    },
  );

  test('a rejected refresh token clears the session', () async {
    final fake = FakeEkklo({
      _refresh: (_) => json({
        'errors': ['invalid token'],
      }, status: 401),
      _search: (_) => json({
        'errors': ['unauthorized'],
      }, status: 401),
    });
    await fake.tokenStore.write(validTokens());

    await check(fake.client.foods.search('riz')).throws<EkkloAuthException>(
      (e) => e
          .has((e) => e.failure, 'failure')
          .equals(EkkloAuthFailure.sessionExpired),
    );
    check(await fake.tokenStore.read()).isNull();
  });

  test('a call racing an expiring session also reports it expired, even '
      'when it starts after the session was cleared', () async {
    final fake = FakeEkklo({
      _refresh: (_) => json({
        'errors': ['invalid token'],
      }, status: 401),
      _search: (_) => json({
        'errors': ['unauthorized'],
      }, status: 401),
    });
    await fake.tokenStore.write(validTokens());
    final first = fake.client.foods.search('riz');
    final later = first.then<Object?>(
      (_) => null,
      onError: (Object _) => fake.client.foods.search('pâtes'),
    );

    for (final call in [later, first]) {
      await check(call).throws<EkkloAuthException>(
        (e) => e
            .has((e) => e.failure, 'failure')
            .equals(EkkloAuthFailure.sessionExpired),
      );
    }
    check(
      fake.to('POST', '/api/v1/auth/login/refresh_token'),
    ).length.equals(1);
  });

  test('a login, or signing out, ends the expired state', () async {
    final tokens = validTokens(subject: 'second');
    final fake = FakeEkklo({
      _login: (_) => json({
        'access_token': tokens.accessToken,
        'refresh_token': tokens.refreshToken,
        'role': 'customer',
        'first_login': false,
      }),
      _refresh: (_) => json({
        'errors': ['invalid token'],
      }, status: 401),
      _search: (request) =>
          request.headers['authorization'] == 'Bearer ${tokens.accessToken}'
          ? json([])
          : json({
              'errors': ['unauthorized'],
            }, status: 401),
    });
    await fake.tokenStore.write(validTokens());
    await check(fake.client.foods.search('riz')).throws<EkkloAuthException>();

    await fake.client.login(email: 'me@example.com', password: 'secret');
    await check(fake.client.foods.search('riz')).completes();
    await fake.client.clearLocalSession();

    await check(fake.client.foods.search('riz')).throws<EkkloAuthException>(
      (e) => e
          .has((e) => e.failure, 'failure')
          .equals(EkkloAuthFailure.notSignedIn),
    );
  });

  test('error statuses carry the status and server messages', () async {
    final fake = FakeEkklo({
      'POST /api/v1/nutritions/client/food-items': (_) => json({
        'errors': ['name:required', 'sugar:required'],
      }, status: 400),
    });
    await fake.tokenStore.write(validTokens());

    await check(
      fake.client.foods.createOwn(
        const EkkloFoodDraft(
          name: '',
          category: EkkloFoodCategory.other,
          calories: 0,
          proteins: 0,
          carbs: 0,
          fats: 0,
          sugar: 0,
          sodiumMilligrams: 0,
        ),
      ),
    ).throws<EkkloApiException>(
      (e) => e
        ..has((e) => e.statusCode, 'statusCode').equals(400)
        ..has(
          (e) => e.errors,
          'errors',
        ).deepEquals(['name:required', 'sugar:required']),
    );
  });
}
