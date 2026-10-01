import 'package:dart_mappable/dart_mappable.dart';

part 'error_response.mapper.dart';

@MappableClass()
class ErrorResponse with ErrorResponseMappable {
  const ErrorResponse({this.errors, this.error});

  final List<String>? errors;
  final String? error;

  List<String> get messages => [...?errors, ?error];
}
