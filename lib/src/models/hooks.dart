import 'package:dart_mappable/dart_mappable.dart';

class NullToEmptyListHook extends MappingHook {
  const NullToEmptyListHook();

  @override
  Object? beforeDecode(Object? value) => value ?? const <Object?>[];
}

class NullToEmptyStringHook extends MappingHook {
  const NullToEmptyStringHook();

  @override
  Object? beforeDecode(Object? value) => value ?? '';
}

class CalendarDateHook extends MappingHook {
  const CalendarDateHook();

  @override
  Object? beforeDecode(Object? value) => value is String && value.length >= 10
      ? '${value.substring(0, 10)}T00:00:00Z'
      : value;
}

class ReceivedJsonHook extends MappingHook {
  const ReceivedJsonHook();

  static const key = r'$received';

  @override
  Object? beforeDecode(Object? value) => switch (value) {
    final Map<String, dynamic> json => {...json, key: json},
    _ => value,
  };

  @override
  Object? afterEncode(Object? value) => switch (value) {
    final Map<String, dynamic> json => {...json}..remove(key),
    _ => value,
  };
}

class BlankObjectToNullHook extends MappingHook {
  const BlankObjectToNullHook();

  @override
  Object? beforeDecode(Object? value) => switch (value) {
    {'id': null || ''} => null,
    _ => value,
  };
}
