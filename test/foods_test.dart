import 'package:checks/checks.dart';
import 'package:ekklo_client/ekklo_client.dart';
import 'package:test/test.dart';

import 'support/fake_ekklo.dart';

void main() {
  test('search results decode the shapes Ekklo actually returns', () async {
    final fake = FakeEkklo({
      'GET /api/v1/nutritions/food-items/search': (_) =>
          jsonFixture('food_search.json'),
    });
    await fake.tokenStore.write(validTokens());

    final [rice, butter] = await fake.client.foods.search(
      '3000000000017',
      language: EkkloLanguage.fr,
    );

    check(
      fake.requests.single.url.queryParameters,
    ).deepEquals({'q': '3000000000017', 'lang': 'fr'});
    check(rice)
      ..has((f) => f.calories, 'calories').equals(353)
      ..has((f) => f.brands, 'brands').isNull()
      ..has((f) => f.nutriscoreGrade, 'nutriscoreGrade').isNull()
      ..has((f) => f.source, 'source').equals(EkkloFoodSource.ciqual)
      ..has((f) => f.lastUsedPortion?.quantity, 'lastUsedPortion').equals(225)
      ..has((f) => f.foodUnits.single.gramsPerUnit, 'gramsPerUnit').equals(70);
    check(butter)
      ..has((f) => f.category, 'category').equals(EkkloFoodCategory.unknown)
      ..has((f) => f.foodUnits, 'foodUnits').isEmpty()
      ..has((f) => f.code, 'code').equals('3000000000017');
  });

  test(
    'a new food is sent with Ekklo spellings and without absent fields',
    () async {
      final fake = FakeEkklo({
        'POST /api/v1/nutritions/client/food-items': (_) => json({
          'id': 'new-food',
          'name': 'Pure Fresh',
          'portion': 100,
          'quantity_type': 'grams',
          'calories': 182,
          'proteins': 0,
          'carbs': 73,
          'fats': 0.2,
          'fiber': 0,
          'sugar': 0,
          'sodium': 12,
          'category': 'sweets and Desserts',
          'food_units': <Object?>[],
        }),
      });
      await fake.tokenStore.write(validTokens());

      final food = await fake.client.foods.createOwn(
        const EkkloFoodDraft(
          name: 'Pure Fresh',
          brands: 'Mentos',
          code: '80978756',
          category: EkkloFoodCategory.sweetsAndDesserts,
          calories: 182,
          proteins: 0,
          carbs: 73,
          fats: 0.2,
          sugar: 0,
          sodiumMilligrams: 12,
          foodUnits: [
            EkkloFoodUnitDraft(
              quantityType: EkkloQuantityType.halfCup,
              gramsPerUnit: 40,
            ),
          ],
        ),
      );

      check(fake.bodyOf(fake.requests.single)).deepEquals({
        'name': 'Pure Fresh',
        'category': 'sweets and Desserts',
        'portion': 100.0,
        'quantity_type': 'grams',
        'calories': 182.0,
        'proteins': 0.0,
        'carbs': 73.0,
        'fats': 0.2,
        'sugar': 0.0,
        'sodium': 12.0,
        'brands': 'Mentos',
        'code': '80978756',
        'food_units': [
          {'quantity_type': '1/2 cup', 'grams_per_unit': 40.0},
        ],
      });
      check(food.id).equals('new-food');
    },
  );
}
