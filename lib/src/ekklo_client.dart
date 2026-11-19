import 'package:ekklo_client/src/auth/in_memory_token_store.dart';
import 'package:ekklo_client/src/auth/token_store.dart';
import 'package:ekklo_client/src/resources/foods.dart';
import 'package:ekklo_client/src/resources/meals.dart';
import 'package:ekklo_client/src/resources/messaging.dart';
import 'package:ekklo_client/src/resources/nutrition_plans.dart';
import 'package:ekklo_client/src/socket/web_socket_connector.dart';
import 'package:ekklo_client/src/transport.dart';
import 'package:http/http.dart' as http;

final class EkkloClient {
  factory EkkloClient({
    EkkloTokenStore? tokenStore,
    http.Client? httpClient,
    Uri? baseUri,
    String userAgent = defaultUserAgent,
    DateTime Function()? clock,
    EkkloWebSocketConnector? webSocketConnector,
  }) {
    final store = tokenStore ?? InMemoryEkkloTokenStore();
    final usedHttpClient = httpClient ?? http.Client();
    return EkkloClient._(
      EkkloTransport(
        httpClient: usedHttpClient,
        tokenStore: store,
        baseUri: baseUri ?? defaultBaseUri,
        userAgent: userAgent,
        clock: clock ?? DateTime.now,
        webSocketConnector: webSocketConnector ?? connectIoWebSocket,
      ),
      store,
      usedHttpClient,
      ownsHttpClient: httpClient == null,
    );
  }

  EkkloClient._(
    this._transport,
    this._tokenStore,
    this._httpClient, {
    required this._ownsHttpClient,
  }) : foods = EkkloFoods(_transport),
       meals = EkkloMeals(_transport),
       messaging = EkkloMessaging(_transport),
       nutritionPlans = EkkloNutritionPlans(_transport);

  static final Uri defaultBaseUri = Uri.parse('https://api.prod.ekklo.com');
  static const defaultUserAgent = 'ekklo_client/0.1.0 (unofficial; Dart)';

  final EkkloTransport _transport;
  final EkkloTokenStore _tokenStore;
  final http.Client _httpClient;
  final bool _ownsHttpClient;

  final EkkloFoods foods;
  final EkkloMeals meals;
  final EkkloMessaging messaging;
  final EkkloNutritionPlans nutritionPlans;

  Future<void> login({required String email, required String password}) =>
      _transport.login(email: email, password: password);

  Future<bool> get isSignedIn async => await _tokenStore.read() != null;

  Future<void> clearLocalSession() => _transport.clearSession();

  void close() {
    if (_ownsHttpClient) _httpClient.close();
  }
}
