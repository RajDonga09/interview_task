import 'package:get_it/get_it.dart';
import 'package:http_interceptor/http/intercepted_client.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:interview_task/core/network/network.dart';
import 'package:mockito/mockito.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies(String environment) =>
    getIt.init(environment: environment);

@module
abstract class RegisterThirdPartyModules {
  @Injectable(env: [Environment.dev, Environment.prod])
  Client get httpClient => InterceptedClient.build(
        interceptors: [
          getIt<HttpInterceptor>(),
        ],
      );

  @LazySingleton(env: [Environment.dev, Environment.prod])
  InternetConnectionChecker get dataConnectionChecker =>
      InternetConnectionChecker();
}

/// THIRD PARTY MOCKS
@LazySingleton(as: Client, env: [Environment.test])
class MockHttpClient extends Mock implements Client {}

@LazySingleton(as: InternetConnectionChecker, env: [Environment.test])
class MockDataConnectionChecker extends Mock
    implements InternetConnectionChecker {}
