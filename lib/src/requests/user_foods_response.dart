import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/food.dart';

part 'user_foods_response.mapper.dart';

@MappableClass()
class UserFoodsResponse with UserFoodsResponseMappable {
  const UserFoodsResponse({this.recent, this.frequent});

  final List<EkkloFood>? recent;
  final List<EkkloFood>? frequent;
}
