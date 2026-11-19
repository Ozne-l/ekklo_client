import 'package:dart_mappable/dart_mappable.dart';

part 'person.mapper.dart';

@MappableClass()
class EkkloPerson with EkkloPersonMappable {
  const EkkloPerson({
    required this.id,
    this.fullName,
    this.firstName,
    this.lastName,
    this.profilePicture,
  });

  final String id;

  @MappableField(hook: EmptyToNullHook())
  final String? fullName;

  @MappableField(hook: EmptyToNullHook())
  final String? firstName;

  @MappableField(hook: EmptyToNullHook())
  final String? lastName;

  @MappableField(hook: EmptyToNullHook())
  final String? profilePicture;
}
