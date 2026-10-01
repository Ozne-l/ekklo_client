import 'package:ekklo_client/src/auth/tokens.dart';

abstract interface class EkkloTokenStore {
  Future<EkkloTokens?> read();
  Future<void> write(EkkloTokens tokens);
  Future<void> clear();
}
