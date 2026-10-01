import 'package:ekklo_client/src/decoding.dart';
import 'package:ekklo_client/src/http_method.dart';
import 'package:ekklo_client/src/models/daily_meal.dart';
import 'package:ekklo_client/src/models/daily_meal_item.dart';
import 'package:ekklo_client/src/models/macros.dart';
import 'package:ekklo_client/src/models/meal_history_page.dart';
import 'package:ekklo_client/src/models/meal_item_draft.dart';
import 'package:ekklo_client/src/models/quantity_type.dart';
import 'package:ekklo_client/src/requests/add_meal_items_request.dart';
import 'package:ekklo_client/src/requests/daily_meals_query.dart';
import 'package:ekklo_client/src/requests/item_quantity_request.dart';
import 'package:ekklo_client/src/requests/manual_macros_request.dart';
import 'package:ekklo_client/src/requests/meal_history_query.dart';
import 'package:ekklo_client/src/transport.dart';

final class EkkloMeals {
  const EkkloMeals(this._transport);

  static const _dailyMeals = '/api/v1/nutritions/daily-meals';

  final EkkloTransport _transport;

  Future<List<EkkloDailyMeal>> forDate(DateTime date) async => decodeList(
    await _transport.request(
      HttpMethod.get,
      _dailyMeals,
      query: DailyMealsQuery(date: formatEkkloDate(date)).toMap(),
    ),
    EkkloDailyMealMapper.fromMap,
  );

  Future<EkkloMealHistoryPage> history({int page = 1, int limit = 20}) async =>
      EkkloMealHistoryPageMapper.fromMap(
        asMap(
          await _transport.request(
            HttpMethod.get,
            '$_dailyMeals/history',
            query: MealHistoryQuery(page: page, limit: limit).toMap(),
          ),
        ),
      );

  Future<EkkloDailyMeal> appendItems({
    required DateTime date,
    required String name,
    required List<EkkloMealItemDraft> items,
    int? order,
  }) async => EkkloDailyMealMapper.fromMap(
    asMap(
      await _transport.request(
        HttpMethod.post,
        _dailyMeals,
        body: AddMealItemsRequest(
          date: formatEkkloDate(date),
          name: name,
          order: order,
          dailyMealItems: items,
        ).toMap(),
      ),
    ),
  );

  Future<EkkloDailyMeal> setManualMacros(
    EkkloDailyMeal meal,
    EkkloMacros macros,
  ) async => EkkloDailyMealMapper.fromMap(
    asMap(
      await _transport.request(
        HttpMethod.put,
        '$_dailyMeals/${meal.id}',
        body: ManualMacrosRequest(
          date: formatEkkloDate(meal.date),
          name: meal.name,
          manualCalories: macros.calories,
          manualProteins: macros.proteins,
          manualCarbs: macros.carbs,
          manualFats: macros.fats,
        ).toMap(),
      ),
    ),
  );

  Future<EkkloDailyMealItem> updateItemQuantity({
    required String mealId,
    required String itemId,
    required double quantity,
    EkkloQuantityType? quantityType,
    int? expectedRevision,
  }) async => EkkloDailyMealItemMapper.fromMap(
    asMap(
      await _transport.request(
        HttpMethod.put,
        '$_dailyMeals/$mealId/items/$itemId',
        body: ItemQuantityRequest(
          quantity: quantity,
          quantityType: quantityType,
          expectedRevision: expectedRevision,
        ).toMap(),
      ),
    ),
  );

  Future<void> removeItem({required String mealId, required String itemId}) =>
      _transport.request(
        HttpMethod.delete,
        '$_dailyMeals/$mealId/items/$itemId',
      );

  Future<void> delete(String mealId) =>
      _transport.request(HttpMethod.delete, '$_dailyMeals/$mealId');
}
