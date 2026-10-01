import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/models/food_owner.dart';
import 'package:ekklo_client/src/models/language.dart';

part 'food_search_query.mapper.dart';

@MappableClass()
class FoodSearchQuery with FoodSearchQueryMappable {
  const FoodSearchQuery({
    required this.query,
    this.language,
    this.owner,
    this.verifiedOnly,
  });

  @MappableField(key: 'q')
  final String query;

  @MappableField(key: 'lang')
  final EkkloLanguage? language;

  final EkkloFoodOwner? owner;
  final bool? verifiedOnly;
}
