import 'package:ekklo_client/src/decoding.dart';
import 'package:ekklo_client/src/http_method.dart';
import 'package:ekklo_client/src/models/nutrition_plan.dart';
import 'package:ekklo_client/src/requests/nutrition_plans_query.dart';
import 'package:ekklo_client/src/transport.dart';

final class EkkloNutritionPlans {
  const EkkloNutritionPlans(this._transport);

  static const _customerPlans = '/api/v1/nutritions/customer';

  final EkkloTransport _transport;

  Future<List<EkkloNutritionPlan>> list() => _transport.request(
    HttpMethod.get,
    _customerPlans,
    listOf(EkkloNutritionPlanMapper.fromMap),
    query: const NutritionPlansQuery().toMap(),
  );
}
