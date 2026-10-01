import 'package:ekklo_client/src/auth/token_store.dart';
import 'package:ekklo_client/src/auth/tokens.dart';

final class InMemoryEkkloTokenStore implements EkkloTokenStore {
  EkkloTokens? _tokens;

  @override
  Future<EkkloTokens?> read() async => _tokens;

  @override
  Future<void> write(EkkloTokens tokens) async => _tokens = tokens;

  @override
  Future<void> clear() async => _tokens = null;
}
