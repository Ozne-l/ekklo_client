import 'package:dart_mappable/dart_mappable.dart';
import 'package:ekklo_client/src/exceptions/auth_failure.dart';
import 'package:ekklo_client/src/exceptions/uri_mapper.dart';

part 'ekklo_exception.mapper.dart';

@MappableClass(discriminatorKey: 'kind')
sealed class EkkloException with EkkloExceptionMappable implements Exception {
  const EkkloException(this.errors);

  final List<String> errors;
}

@MappableClass()
final class EkkloAuthException extends EkkloException
    with EkkloAuthExceptionMappable {
  const EkkloAuthException(this.failure, [super.errors = const []]);

  final EkkloAuthFailure failure;
}

@MappableClass(includeCustomMappers: [UriMapper()])
final class EkkloApiException extends EkkloException
    with EkkloApiExceptionMappable {
  const EkkloApiException({
    required this.method,
    required this.uri,
    required this.statusCode,
    List<String> errors = const [],
  }) : super(errors);

  final String method;
  final Uri uri;
  final int statusCode;
}
