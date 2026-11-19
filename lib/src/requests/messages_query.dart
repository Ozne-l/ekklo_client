import 'package:dart_mappable/dart_mappable.dart';

part 'messages_query.mapper.dart';

@MappableClass()
class MessagesQuery with MessagesQueryMappable {
  const MessagesQuery({required this.limit, this.beforeId});

  final int limit;
  final String? beforeId;
}
