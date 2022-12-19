import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:yuno/api/auth/rest_client.dart';
import 'package:yuno/data/http/authorization_interceptor.dart';
import 'package:yuno/data/http/dio_provider.dart';
import 'package:yuno/data/repository/refresh_token_provider.dart';
import 'package:yuno/data/repository/refresh_token_repository.dart';
import 'package:yuno/data/repository/token_provider.dart';
import 'package:yuno/data/repository/token_repository.dart';
import 'package:yuno/data/repository/user_provider.dart';
import 'package:yuno/data/repository/user_repository.dart';
import 'package:yuno/data/storage/shared_preference_data.dart';
import 'package:yuno/domain/logout_interactor.dart';
import 'package:yuno/domain/repository/auth_repository.dart';

final sl = GetIt.instance;

const _notAuthorizedDio = 'notAuthorizedDio';
const _authorizedDio = 'authorizedDio';

void initServiceLocator() {
  _setupDataProviders();
  _setupRepositories();
  _setupInteractors();
  _setupComplexInteractors();
  _setApiRelatedClasses();
  _setupBlocs();
}

// ONLY SINGLETONS
void _setupDataProviders() {
  sl.registerLazySingleton(() => SharedPreferenceData());
  sl.registerLazySingleton<UserProvider>(() => sl.get<SharedPreferenceData>());
  sl.registerLazySingleton<TokenProvider>(() => sl.get<SharedPreferenceData>());
  sl.registerLazySingleton<RefreshTokenProvider>(() => sl.get<SharedPreferenceData>());
}

// ONLY SINGLETONS
void _setupRepositories() {
  sl.registerLazySingleton(() => UserRepository(sl.get<UserProvider>()));
  sl.registerLazySingleton(() => TokenRepository(sl.get<TokenProvider>()));
  sl.registerLazySingleton(() => RefreshTokenRepository(sl.get<RefreshTokenProvider>()));
}

// ONLY SINGLETONS
void _setupInteractors() {
  sl.registerLazySingleton(
    () => LogoutInteractor(
      userRepository: sl.get<UserRepository>(),
      tokenRepository: sl.get<TokenRepository>(),
      refreshTokenRepository: sl.get<RefreshTokenRepository>(),
    ),
  );
}

// ONLY SINGLETONS
void _setupComplexInteractors() {}

void _setApiRelatedClasses() {
  sl.registerFactory(() => DioBuilder());
  sl.registerLazySingleton(
    () => AuthorizationInterceptor(
      tokenRepository: sl.get<TokenRepository>(),
      logoutInteractor: sl.get<LogoutInteractor>(),
    ),
  );

  // 1 способ
  sl.registerSingleton<Dio>(sl.get<DioBuilder>().build(), instanceName: _notAuthorizedDio);
  sl.registerSingleton<Dio>(
    sl.get<DioBuilder>().addAuthorizationInterceptor(sl.get<AuthorizationInterceptor>()).build(),
    instanceName: _authorizedDio,
  );
  sl.registerLazySingleton<AuthClient>(
      () => AuthClient(sl.get<Dio>(instanceName: _notAuthorizedDio)));
  // sl.registerLazySingleton(
  //       () => AuthorizedApiService(sl.get<Dio>(instanceName: _authorizedDio)),
  // );

  // 2 способ
  // sl.registerLazySingleton(() => UnauthorizedApiService(sl.get<DioBuilder>().build()));
  // sl.registerLazySingleton(() => AuthorizedApiService(sl.get<DioBuilder>()
  //     .addAuthorizationInterceptor(sl.get<AuthorizationInterceptor>())
  //     .build()));
}

// ONLY FACTORIES
void _setupBlocs() {
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepository(
      authClient: sl.get<AuthClient>(),
      userRepository: sl.get<UserRepository>(),
      tokenRepository: sl.get<TokenRepository>(),
      refreshTokenRepository: sl.get<RefreshTokenRepository>(),
    ),
  );
}
