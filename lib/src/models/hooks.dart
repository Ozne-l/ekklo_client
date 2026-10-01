import 'package:dart_mappable/dart_mappable.dart';

class NullToEmptyListHook extends MappingHook {
  const NullToEmptyListHook();

  @override
  Object? beforeDecode(Object? value) => value ?? const <Object?>[];
}

class CalendarDateHook extends MappingHook {
  const CalendarDateHook();

  @override
  Object? beforeDecode(Object? value) => value is String && value.length >= 10
      ? '${value.substring(0, 10)}T00:00:00Z'
      : value;
}

class BlankObjectToNullHook extends MappingHook {
  const BlankObjectToNullHook();

  @override
  Object? beforeDecode(Object? value) => switch (value) {
    {'id': null || ''} => null,
    _ => value,
  };
}
