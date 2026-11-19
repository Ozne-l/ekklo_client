import 'package:dart_mappable/dart_mappable.dart';

part 'socket_closure.mapper.dart';

@MappableClass()
class EkkloSocketClosure with EkkloSocketClosureMappable {
  const EkkloSocketClosure({this.code, this.reason = ''});

  final int? code;
  final String reason;
}
