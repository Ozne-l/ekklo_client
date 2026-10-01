import 'dart:io';

import 'package:ekklo_client/ekklo_client.dart';

const _usage = '''
Read-only tour of your own Ekklo account.

  export EKKLO_EMAIL=you@example.com EKKLO_PASSWORD=...
  dart run example/main.dart search <name or barcode>
  dart run example/main.dart meals [YYYY-MM-DD]
  dart run example/main.dart plans

The session is cached in .ekklo_tokens.json (git-ignored). Delete it to sign
out.''';

Future<void> main(List<String> args) async {
  if (args.isEmpty) {
    stdout.writeln(_usage);
    exitCode = 64;
    return;
  }
  final ekklo = EkkloClient(tokenStore: _FileTokenStore('.ekklo_tokens.json'));
  try {
    if (!await ekklo.isSignedIn) await _login(ekklo);
    switch (args) {
      case ['search', ...final words] when words.isNotEmpty:
        await _search(ekklo, words.join(' '));
      case ['meals']:
        await _meals(ekklo, DateTime.now());
      case ['meals', final day]:
        await _meals(ekklo, DateTime.parse(day));
      case ['plans']:
        await _plans(ekklo);
      default:
        stdout.writeln(_usage);
        exitCode = 64;
    }
  } on EkkloException catch (error) {
    stderr.writeln(error);
    exitCode = 1;
  } finally {
    ekklo.close();
  }
}

Future<void> _login(EkkloClient ekklo) async {
  final email = Platform.environment['EKKLO_EMAIL'];
  final password = Platform.environment['EKKLO_PASSWORD'];
  if (email == null || password == null) {
    throw const EkkloAuthException(EkkloAuthFailure.notSignedIn, [
      'set EKKLO_EMAIL and EKKLO_PASSWORD',
    ]);
  }
  await ekklo.login(email: email, password: password);
}

Future<void> _search(EkkloClient ekklo, String query) async {
  for (final food in await ekklo.foods.search(query)) {
    stdout.writeln(
      [
        food.name,
        if (food.brands case final brands?) '($brands)',
        '- ${food.calories.round()} kcal /',
        _amount(food.portion),
        food.quantityType.name,
        '· P ${food.proteins} C ${food.carbs} F ${food.fats}',
        if (food.source case final source?) '· ${source.name}',
        ?food.code,
      ].join(' '),
    );
  }
}

Future<void> _meals(EkkloClient ekklo, DateTime day) async {
  final meals = await ekklo.meals.forDate(day);
  if (meals.isEmpty) {
    stdout.writeln(
      'No meals logged on ${day.toIso8601String().substring(0, 10)}.',
    );
  }
  for (final meal in meals) {
    stdout.writeln('${meal.name} (revision ${meal.revision})');
    for (final item in meal.items) {
      stdout.writeln(
        '  ${_amount(item.quantity)} ${item.quantityType.name} '
        '${item.food?.name ?? item.itemType.name}',
      );
    }
  }
}

Future<void> _plans(EkkloClient ekklo) async {
  for (final plan in await ekklo.nutritionPlans.list()) {
    stdout.writeln(
      '${plan.name} [${plan.status?.name}]: ${plan.defaultMaxCalories} kcal, '
      'P ${plan.defaultMaxProteins} C ${plan.defaultMaxCarbs} '
      'F ${plan.defaultMaxFats}',
    );
  }
}

String _amount(double value) =>
    value == value.roundToDouble() ? '${value.round()}' : '$value';

final class _FileTokenStore implements EkkloTokenStore {
  _FileTokenStore(String path) : _file = File(path);

  final File _file;

  @override
  Future<EkkloTokens?> read() async => _file.existsSync()
      ? EkkloTokensMapper.fromJson(await _file.readAsString())
      : null;

  @override
  Future<void> write(EkkloTokens tokens) =>
      _file.writeAsString(tokens.toJson());

  @override
  Future<void> clear() async {
    if (_file.existsSync()) await _file.delete();
  }
}
