import 'package:dart_mappable/dart_mappable.dart';

part 'reaction_request.mapper.dart';

@MappableClass()
class ReactionRequest with ReactionRequestMappable {
  const ReactionRequest({required this.emoji});

  final String emoji;
}
