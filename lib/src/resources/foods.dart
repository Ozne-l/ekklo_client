import 'package:ekklo_client/src/decoding.dart';
import 'package:ekklo_client/src/http_method.dart';
import 'package:ekklo_client/src/models/food.dart';
import 'package:ekklo_client/src/models/food_draft.dart';
import 'package:ekklo_client/src/models/food_owner.dart';
import 'package:ekklo_client/src/models/language.dart';
import 'package:ekklo_client/src/requests/food_search_query.dart';
import 'package:ekklo_client/src/requests/user_foods_query.dart';
import 'package:ekklo_client/src/requests/user_foods_response.dart';
import 'package:ekklo_client/src/requests/user_foods_type.dart';
import 'package:ekklo_client/src/transport.dart';

final class EkkloFoods {
  const EkkloFoods(this._transport);

  static const _foodItems = '/api/v1/nutritions/food-items';
  static const _clientFoodItems = '/api/v1/nutritions/client/food-items';
  static const _favorites = '/api/v1/food-favorites';

  final EkkloTransport _transport;

  Future<List<EkkloFood>> search(
    String query, {
    EkkloLanguage? language,
    EkkloFoodOwner? owner,
    bool? verifiedOnly,
  }) => _transport.request(
    HttpMethod.get,
    '$_foodItems/search',
    listOf(EkkloFoodMapper.fromMap),
    query: FoodSearchQuery(
      query: query,
      language: language,
      owner: owner,
      verifiedOnly: verifiedOnly,
    ).toMap(),
  );

  Future<EkkloFood> byId(String id) => _transport.request(
    HttpMethod.get,
    '$_foodItems/$id',
    mapped(EkkloFoodMapper.fromMap),
  );

  Future<List<EkkloFood>> recent({int limit = 20}) async =>
      (await _userFoods(UserFoodsType.recent, limit)).recent ?? const [];

  Future<List<EkkloFood>> frequent({int limit = 20}) async =>
      (await _userFoods(UserFoodsType.frequent, limit)).frequent ?? const [];

  Future<List<EkkloFood>> favorites() => _transport.request(
    HttpMethod.get,
    _favorites,
    listOf(EkkloFoodMapper.fromMap),
  );

  Future<EkkloFood> createOwn(EkkloFoodDraft draft) => _transport.request(
    HttpMethod.post,
    _clientFoodItems,
    mapped(EkkloFoodMapper.fromMap),
    body: draft.toMap(),
  );

  Future<EkkloFood> updateOwn(String id, EkkloFoodDraft draft) =>
      _transport.request(
        HttpMethod.put,
        '$_clientFoodItems/$id',
        mapped(EkkloFoodMapper.fromMap),
        body: draft.toMap(),
      );

  Future<void> deleteOwn(String id) => _transport.request(
    HttpMethod.delete,
    '$_clientFoodItems/$id',
    ignoreBody,
  );

  Future<UserFoodsResponse> _userFoods(UserFoodsType type, int limit) =>
      _transport.request(
        HttpMethod.get,
        '$_foodItems/user',
        mapped(UserFoodsResponseMapper.fromMap),
        query: UserFoodsQuery(type: type, limit: limit).toMap(),
      );
}
