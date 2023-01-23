import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:yuno/api/auth/rest_client.dart';
import 'package:yuno/api/project/rest_client.dart';
import 'package:yuno/api/task/rest_client.dart';
import 'package:yuno/api/user/rest_client.dart';
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
import 'package:yuno/domain/repository/api_auth_repository.dart';
import 'package:yuno/domain/repository/api_project_repository.dart';
import 'package:yuno/domain/repository/api_task_repository.dart';
import 'package:yuno/domain/repository/api_user_repository.dart';
import 'package:yuno/ui/pages/main/profile_pages/profile/bloc/profile_bloc.dart';

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
    () => AuthClient(sl.get<Dio>(instanceName: _notAuthorizedDio)),
  );
  sl.registerLazySingleton<AuthPasswordClient>(
    () => AuthPasswordClient(sl.get<Dio>(instanceName: _authorizedDio)),
  );
  sl.registerLazySingleton<UserClient>(
    () => UserClient(sl.get<Dio>(instanceName: _authorizedDio)),
  );
  sl.registerLazySingleton<TaskClient>(
    () => TaskClient(sl.get<Dio>(instanceName: _authorizedDio)),
  );
  sl.registerLazySingleton<ProjectClient>(
    () => ProjectClient(sl.get<Dio>(instanceName: _authorizedDio)),
  );

  sl.registerLazySingleton<ApiAuthRepository>(
    () => ApiAuthRepository(
      authClient: sl.get<AuthClient>(),
      authPasswordClient: sl.get<AuthPasswordClient>(),
      userRepository: sl.get<UserRepository>(),
      tokenRepository: sl.get<TokenRepository>(),
      refreshTokenRepository: sl.get<RefreshTokenRepository>(),
    ),
  );
  sl.registerLazySingleton<ApiUserRepository>(
    () => ApiUserRepository(
      userClient: sl.get<UserClient>(),
      userRepository: sl.get<UserRepository>(),
      tokenRepository: sl.get<TokenRepository>(),
    ),
  );
  sl.registerLazySingleton<ApiTaskRepository>(
    () => ApiTaskRepository(
      taskClient: sl.get<TaskClient>(),
    ),
  );
  sl.registerLazySingleton<ApiProjectRepository>(
    () => ApiProjectRepository(
      projectClient: sl.get<ProjectClient>(),
    ),
  );

  // 2 способ
  // sl.registerLazySingleton(() => UnauthorizedApiService(sl.get<DioBuilder>().build()));
  // sl.registerLazySingleton(() => AuthorizedApiService(sl.get<DioBuilder>()
  //     .addAuthorizationInterceptor(sl.get<AuthorizationInterceptor>())
  //     .build()));
}

// ONLY FACTORIES
void _setupBlocs() {
  sl.registerFactory(
    () => ProfileBloc(
      apiAuthRepository: sl.get<ApiAuthRepository>(),
      apiUserRepository: sl.get<ApiUserRepository>(),
      userRepository: sl.get<UserRepository>(),
      refreshTokenRepository: sl.get<RefreshTokenRepository>(),
      logoutInteractor: sl.get<LogoutInteractor>(),
    ),
  );
}
