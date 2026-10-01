import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/requests/user_foods_type.dart';

part 'user_foods_query.mapper.dart';

@MappableClass()
class UserFoodsQuery with UserFoodsQueryMappable {
  const UserFoodsQuery({required this.type, required this.limit});

  final UserFoodsType type;
  final int limit;
}
