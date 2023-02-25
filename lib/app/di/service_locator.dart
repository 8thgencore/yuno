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
  sl.registerLazySingleton(() => SharedPreferenceData());
  sl.registerLazySingleton<UserProvider>(() => sl.get<SharedPreferenceData>());
  sl.registerLazySingleton<TokenProvider>(() => sl.get<SharedPreferenceData>());
  sl.registerLazySingleton<RefreshTokenProvider>(() => sl.get<SharedPreferenceData>());
  sl.registerLazySingleton<TasksProvider>(() => sl.get<SharedPreferenceData>());
  sl.registerLazySingleton<ResetEmailProvider>(() => sl.get<SharedPreferenceData>());
  sl.registerLazySingleton<ResetTokenProvider>(() => sl.get<SharedPreferenceData>());
}

// ONLY SINGLETONS
void _setupRepositories() {
  sl.registerLazySingleton(() => UserDataRepository(sl.get<UserProvider>()));
  sl.registerLazySingleton(() => TokenDataRepository(sl.get<TokenProvider>()));
  sl.registerLazySingleton(() => RefreshTokenDataRepository(sl.get<RefreshTokenProvider>()));
  sl.registerLazySingleton(() => TasksNotDoneDataRepository(sl.get<TasksProvider>()));
  sl.registerLazySingleton(() => ResetEmailDataRepository(sl.get<ResetEmailProvider>()));
  sl.registerLazySingleton(() => ResetTokenDataRepository(sl.get<ResetTokenProvider>()));
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
  sl.registerFactory(DioBuilder.new);
  sl.registerLazySingleton(
    () => AuthorizationInterceptor(
      tokenDataRepository: sl.get<TokenDataRepository>(),
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

  sl.registerLazySingleton<IAuthRepository>(
    () => ApiAuthRepository(
      authClient: sl.get<AuthClient>(),
      authPasswordClient: sl.get<AuthPasswordClient>(),
      userDataRepository: sl.get<UserDataRepository>(),
      tokenDataRepository: sl.get<TokenDataRepository>(),
      refreshTokenDataRepository: sl.get<RefreshTokenDataRepository>(),
      resetEmailDataRepository: sl.get<ResetEmailDataRepository>(),
      resetTokenDataRepository: sl.get<ResetTokenDataRepository>(),
    ),
  );
  sl.registerLazySingleton<IUserRepository>(
    () => ApiUserRepository(
      userClient: sl.get<UserClient>(),
      userDataRepository: sl.get<UserDataRepository>(),
      tokenDataRepository: sl.get<TokenDataRepository>(),
    ),
  );
  sl.registerLazySingleton<ITaskRepository>(
    () => ApiTaskRepository(
      taskClient: sl.get<TaskClient>(),
      tasksNotDoneDataRepository: sl.get<TasksNotDoneDataRepository>(),
    ),
  );
  sl.registerLazySingleton<IProjectRepository>(
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
      authRepository: sl.get<IAuthRepository>(),
      userRepository: sl.get<IUserRepository>(),
      refreshTokenDataRepository: sl.get<RefreshTokenDataRepository>(),
      logoutInteractor: sl.get<LogoutInteractor>(),
    ),
  );
}
