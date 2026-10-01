import 'package:checks/checks.dart';
import 'package:ekklo_client/ekklo_client.dart';
import 'package:test/test.dart';

import 'support/fake_ekklo.dart';

const _dailyMeals = '/api/v1/nutritions/daily-meals';

void main() {
  test(
    'a day of meals decodes to calendar dates and absent relations',
    () async {
      final fake = FakeEkklo({
        'GET $_dailyMeals': (_) => jsonFixture('daily_meals.json'),
      });
      await fake.tokenStore.write(validTokens());

      final [breakfast] = await fake.client.meals.forDate(DateTime(2026, 10));

      check(
        fake.requests.single.url.queryParameters,
      ).deepEquals({'date': '2026-10-01'});
      check(breakfast)
        ..has((m) => m.date, 'date').equals(DateTime.utc(2026, 10))
        ..has((m) => m.photoUrl, 'photoUrl').isNull()
        ..has((m) => m.description, 'description').isNull();
      final [food, recipe] = breakfast.items;
      check(food)
        ..has((i) => i.quantity, 'quantity').equals(225)
        ..has((i) => i.food?.name, 'food').equals('Riz thaï ou basmati, cru');
      check(recipe)
        ..has((i) => i.itemType, 'itemType').equals(EkkloMealItemType.recipe)
        ..has((i) => i.food, 'food').isNull()
        ..has((i) => i.foodId, 'foodId').isNull()
        ..has((i) => i.recipeId, 'recipeId').isNotNull();
    },
  );

  test('items are posted as a JSON array, not the multipart form Swagger '
      'documents', () async {
    final fake = FakeEkklo({
      'POST $_dailyMeals': (_) => json(
        {
          'id': 'meal',
          'date': '2026-10-01T14:00:00+02:00',
          'name': 'Collation',
          'revision': 1,
          'daily_meal_items': null,
        },
        status: 201,
      ),
    });
    await fake.tokenStore.write(validTokens());

    final meal = await fake.client.meals.appendItems(
      date: DateTime(2026, 10, 1, 23, 59),
      name: 'Collation',
      items: const [
        EkkloMealItemDraft.food(foodId: 'food-a', quantity: 145),
        EkkloMealItemDraft.food(
          foodId: 'food-b',
          quantity: 1,
          quantityType: EkkloQuantityType.portion,
        ),
      ],
    );

    final request = fake.requests.single;
    check(request.headers['content-type']).isNotNull().startsWith(
      'application/json',
    );
    check(fake.bodyOf(request)).deepEquals({
      'date': '2026-10-01',
      'name': 'Collation',
      'daily_meal_items': [
        {
          'item_type': 'food',
          'food_id': 'food-a',
          'quantity': 145.0,
          'quantity_type': 'grams',
        },
        {
          'item_type': 'food',
          'food_id': 'food-b',
          'quantity': 1.0,
          'quantity_type': 'portion',
        },
      ],
    });
    check(meal.items).isEmpty();
  });

  test(
    'manual macros are set on the meal identified by its date and name',
    () async {
      final meal = EkkloDailyMeal(
        id: 'meal',
        date: DateTime.utc(2026, 10),
        name: 'Petit déjeuner',
        revision: 6,
      );
      final fake = FakeEkklo({
        'PUT $_dailyMeals/meal': (_) => json({
          ...meal.toMap(),
          'date': '2026-10-01T14:00:00+02:00',
          'revision': 7,
          'manual_calories': 250,
        }),
      });
      await fake.tokenStore.write(validTokens());

      final updated = await fake.client.meals.setManualMacros(
        meal,
        const EkkloMacros(calories: 250, proteins: 34, carbs: 65, fats: 1),
      );

      check(fake.bodyOf(fake.requests.single)).deepEquals({
        'date': '2026-10-01',
        'name': 'Petit déjeuner',
        'manual_calories': 250.0,
        'manual_proteins': 34.0,
        'manual_carbs': 65.0,
        'manual_fats': 1.0,
      });
      check(updated.revision).equals(7);
    },
  );
}
