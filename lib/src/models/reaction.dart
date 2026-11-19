import 'package:dart_mappable/dart_mappable.dart';

part 'reaction.mapper.dart';

@MappableClass()
class EkkloReaction with EkkloReactionMappable {
  const EkkloReaction({
    required this.emoji,
    required this.count,
    this.mine = false,
  });

  final String emoji;
  final int count;
  final bool mine;
}
