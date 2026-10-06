import 'package:checks/checks.dart';
import 'package:ekklo_client/ekklo_client.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

import 'support/fake_ekklo.dart';

const _login = 'POST /api/v1/auth/login';
const _refresh = 'POST /api/v1/auth/login/refresh_token';
const _search = 'GET /api/v1/nutritions/food-items/search';
const _food = 'GET /api/v1/nutritions/food-items/1';

http.Response _offline(http.Request request) =>
    throw http.ClientException('Connection failed', request.url);

void main() {
  test('no network while logging in is a network error, '
      'not refused credentials', () async {
    final fake = FakeEkklo({_login: _offline});

    await check(
      fake.client.login(email: 'me@example.com', password: 'secret'),
    ).throws<EkkloNetworkException>(
      (e) => e
        ..has((e) => e.method, 'method').equals('POST')
        ..has((e) => e.uri.path, 'path').equals('/api/v1/auth/login')
        ..has((e) => e.errors, 'errors').deepEquals(['Connection failed']),
    );
  });

  test('no network on an API call is a network error and keeps the '
      'session', () async {
    final fake = FakeEkklo({_search: _offline});
    await fake.tokenStore.write(validTokens());

    await check(fake.client.foods.search('riz')).throws<EkkloNetworkException>(
      (e) => e.has((e) => e.uri.host, 'host').equals('api.prod.ekklo.com'),
    );
    check(await fake.client.isSignedIn).isTrue();
  });

  test('no network while refreshing is a network error and keeps the '
      'session', () async {
    final fake = FakeEkklo({
      _search: (_) => json({'message': 'expired'}, status: 401),
      _refresh: _offline,
    });
    await fake.tokenStore.write(validTokens());

    await check(
      fake.client.foods.search('riz'),
    ).throws<EkkloNetworkException>();
    check(await fake.client.isSignedIn).isTrue();
  });

  test('a response that is not JSON is unexpected', () async {
    final fake = FakeEkklo({
      _food: (_) => http.Response(
        '<html>maintenance</html>',
        200,
        headers: {'content-type': 'text/html'},
      ),
    });
    await fake.tokenStore.write(validTokens());

    await check(
      fake.client.foods.byId('1'),
    ).throws<EkkloUnexpectedResponseException>(
      (e) => e
        ..has((e) => e.method, 'method').equals('GET')
        ..has(
          (e) => e.uri.path,
          'path',
        ).equals('/api/v1/nutritions/food-items/1')
        ..has((e) => e.statusCode, 'status').equals(200)
        ..has((e) => e.errors, 'errors').isNotEmpty(),
    );
  });

  test('a JSON response missing a required field is unexpected', () async {
    final fake = FakeEkklo({
      _food: (_) => json({'name': 'no id'}),
    });
    await fake.tokenStore.write(validTokens());

    await check(
      fake.client.foods.byId('1'),
    ).throws<EkkloUnexpectedResponseException>();
  });

  test('a login response without tokens is unexpected, '
      'not refused credentials', () async {
    final fake = FakeEkklo({
      _login: (_) => json({'role': 'customer'}),
    });

    await check(
      fake.client.login(email: 'me@example.com', password: 'secret'),
    ).throws<EkkloUnexpectedResponseException>(
      (e) => e.has((e) => e.uri.path, 'path').equals('/api/v1/auth/login'),
    );
  });
}
