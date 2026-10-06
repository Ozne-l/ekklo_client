import 'package:dart_mappable/dart_mappable.dart';

List<T> decodeList<T>(
  Object? json,
  T Function(Map<String, dynamic> map) fromMap,
) => [
  for (final item in json as List<Object?>? ?? const []) fromMap(asMap(item)),
];

T Function(Object? json) mapped<T>(
  T Function(Map<String, dynamic> map) fromMap,
) =>
    (json) => fromMap(asMap(json));

List<T> Function(Object? json) listOf<T>(
  T Function(Map<String, dynamic> map) fromMap,
) =>
    (json) => decodeList(json, fromMap);

void ignoreBody(Object? json) {}

Map<String, dynamic> asMap(Object? json) => switch (json) {
  final Map<String, dynamic> map => map,
  _ => throw MapperException.unexpectedType(
    json.runtimeType,
    'Map<String, dynamic>',
  ),
};

String formatEkkloDate(DateTime date) =>
    '${date.year.toString().padLeft(4, '0')}-'
    '${date.month.toString().padLeft(2, '0')}-'
    '${date.day.toString().padLeft(2, '0')}';
