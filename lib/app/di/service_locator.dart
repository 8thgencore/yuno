import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:yuno/api/auth/rest_client.dart';
import 'package:yuno/api/project/rest_client.dart';
import 'package:yuno/api/task/rest_client.dart';
import 'package:yuno/api/user/rest_client.dart';
import 'package:yuno/data/http/authorization_interceptor.dart';
import 'package:yuno/data/http/dio_provider.dart';
import 'package:yuno/data/repository/repository.dart';
import 'package:yuno/data/repository/reset_email_data_repository.dart';
import 'package:yuno/data/repository/reset_email_provider.dart';
import 'package:yuno/data/repository/reset_token_data_repository.dart';
import 'package:yuno/data/repository/reset_token_provider.dart';
import 'package:yuno/data/storage/shared_preference_data.dart';
import 'package:yuno/domain/logout_interactor.dart';
import 'package:yuno/domain/repository/api_auth_repository.dart';
import 'package:yuno/domain/repository/api_project_repository.dart';
import 'package:yuno/domain/repository/api_task_repository.dart';
import 'package:yuno/domain/repository/api_user_repository.dart';
import 'package:yuno/ui/pages/main/profile/profile_page/bloc/profile_bloc.dart';

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
  sl
    ..registerLazySingleton(SharedPreferenceData.new)
    ..registerLazySingleton<UserProvider>(() => sl.get<SharedPreferenceData>())
    ..registerLazySingleton<TokenProvider>(() => sl.get<SharedPreferenceData>())
    ..registerLazySingleton<RefreshTokenProvider>(() => sl.get<SharedPreferenceData>())
    ..registerLazySingleton<TasksProvider>(() => sl.get<SharedPreferenceData>())
    ..registerLazySingleton<ResetEmailProvider>(() => sl.get<SharedPreferenceData>())
    ..registerLazySingleton<ResetTokenProvider>(() => sl.get<SharedPreferenceData>());
}

// ONLY SINGLETONS
void _setupRepositories() {
  sl
    ..registerLazySingleton(() => UserDataRepository(sl.get<UserProvider>()))
    ..registerLazySingleton(() => TokenDataRepository(sl.get<TokenProvider>()))
    ..registerLazySingleton(() => RefreshTokenDataRepository(sl.get<RefreshTokenProvider>()))
    ..registerLazySingleton(() => TasksNotDoneDataRepository(sl.get<TasksProvider>()))
    ..registerLazySingleton(() => ResetEmailDataRepository(sl.get<ResetEmailProvider>()))
    ..registerLazySingleton(() => ResetTokenDataRepository(sl.get<ResetTokenProvider>()));
}

// ONLY SINGLETONS
void _setupInteractors() {
  sl.registerLazySingleton(
    () => LogoutInteractor(
      userDataRepository: sl.get<UserDataRepository>(),
      tokenDataRepository: sl.get<TokenDataRepository>(),
      refreshTokenDataRepository: sl.get<RefreshTokenDataRepository>(),
      tasksDataRepository: sl.get<TasksNotDoneDataRepository>(),
    ),
  );
}

// ONLY SINGLETONS
void _setupComplexInteractors() {}

void _setApiRelatedClasses() {
  sl
    ..registerFactory(DioBuilder.new)
    ..registerLazySingleton(
      () => AuthorizationInterceptor(
        tokenDataRepository: sl.get<TokenDataRepository>(),
        logoutInteractor: sl.get<LogoutInteractor>(),
      ),
    )
    // Dio initialization
    ..registerSingleton<Dio>(sl.get<DioBuilder>().build(), instanceName: _notAuthorizedDio)
    ..registerSingleton<Dio>(
      sl.get<DioBuilder>().addAuthorizationInterceptor(sl.get<AuthorizationInterceptor>()).build(),
      instanceName: _authorizedDio,
    )
    // Dio client`s
    ..registerLazySingleton<AuthClient>(
      () => AuthClient(sl.get<Dio>(instanceName: _notAuthorizedDio)),
    )
    ..registerLazySingleton<AuthPasswordClient>(
      () => AuthPasswordClient(sl.get<Dio>(instanceName: _authorizedDio)),
    )
    ..registerLazySingleton<UserClient>(
      () => UserClient(sl.get<Dio>(instanceName: _authorizedDio)),
    )
    ..registerLazySingleton<TaskClient>(
      () => TaskClient(sl.get<Dio>(instanceName: _authorizedDio)),
    )
    ..registerLazySingleton<ProjectClient>(
      () => ProjectClient(sl.get<Dio>(instanceName: _authorizedDio)),
    )
    // Repository
    ..registerLazySingleton<IAuthRepository>(
      () => ApiAuthRepository(
        authClient: sl.get<AuthClient>(),
        authPasswordClient: sl.get<AuthPasswordClient>(),
        userDataRepository: sl.get<UserDataRepository>(),
        tokenDataRepository: sl.get<TokenDataRepository>(),
        refreshTokenDataRepository: sl.get<RefreshTokenDataRepository>(),
        resetEmailDataRepository: sl.get<ResetEmailDataRepository>(),
        resetTokenDataRepository: sl.get<ResetTokenDataRepository>(),
      ),
    )
    ..registerLazySingleton<IUserRepository>(
      () => ApiUserRepository(
        userClient: sl.get<UserClient>(),
        userDataRepository: sl.get<UserDataRepository>(),
        tokenDataRepository: sl.get<TokenDataRepository>(),
      ),
    )
    ..registerLazySingleton<ITaskRepository>(
      () => ApiTaskRepository(
        taskClient: sl.get<TaskClient>(),
        tasksNotDoneDataRepository: sl.get<TasksNotDoneDataRepository>(),
      ),
    )
    ..registerLazySingleton<IProjectRepository>(
      () => ApiProjectRepository(
        projectClient: sl.get<ProjectClient>(),
      ),
    );
}

// ONLY FACTORIES
void _setupBlocs() {
  sl.registerFactory(
    () => ProfileBloc(
      authRepository: sl.get<IAuthRepository>(),
      userRepository: sl.get<IUserRepository>(),
      refreshTokenDataRepository: sl.get<RefreshTokenDataRepository>(),
      logoutInteractor: sl.get<LogoutInteractor>(),
    ),
  );
}
