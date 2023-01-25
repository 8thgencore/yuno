import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:yuno/app/app.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/app/routes/observer.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/data/repository/user_repository.dart';
import 'package:yuno/domain/repository/api_auth_repository.dart';
import 'package:yuno/domain/repository/api_project_repository.dart';
import 'package:yuno/domain/repository/api_task_repository.dart';
import 'package:yuno/domain/repository/api_user_repository.dart';
import 'package:yuno/ui/pages/auth/login/view/login_page.dart';
import 'package:yuno/ui/pages/auth/registration/view/registration_page.dart';
import 'package:yuno/ui/pages/main/calendar/view/statistics_page.dart';
import 'package:yuno/ui/pages/main/home/bloc/home_checklist_bloc.dart';
import 'package:yuno/ui/pages/main/home/bloc/home_header_bloc.dart';
import 'package:yuno/ui/pages/main/home/bloc/home_projects_bloc.dart';
import 'package:yuno/ui/pages/main/home/view/home_page.dart';
import 'package:yuno/ui/pages/main/main_scaffold.dart';
import 'package:yuno/ui/pages/main/profile_pages/change_password/bloc/change_password_bloc.dart';
import 'package:yuno/ui/pages/main/profile_pages/change_password/view/change_password_page.dart';
import 'package:yuno/ui/pages/main/profile_pages/edit_profile/bloc/profile_edit_bloc.dart';
import 'package:yuno/ui/pages/main/profile_pages/edit_profile/view/profile_edit_page.dart';
import 'package:yuno/ui/pages/main/profile_pages/profile/view/profile_page.dart';
import 'package:yuno/ui/pages/main/project/project_details/bloc/project_details_bloc.dart';
import 'package:yuno/ui/pages/main/project/project_details/view/project_details_page.dart';
import 'package:yuno/ui/pages/main/project/project_edit/bloc/project_edit_bloc.dart';
import 'package:yuno/ui/pages/main/project/project_edit/view/project_page.dart';
import 'package:yuno/ui/pages/main/project/projects_list/bloc/projects_list_bloc.dart';
import 'package:yuno/ui/pages/main/project/projects_list/view/projects_list.dart';
import 'package:yuno/ui/pages/main/statistics/view/statistics_page.dart';
import 'package:yuno/ui/pages/splash/view/splash_page.dart';

mixin RouterMixin on State<App> {
  final rootNavigatorKey = GlobalKey<NavigatorState>();

  GoRouter? _router;

  GoRouter get router {
    _router ??= GoRouter(
      initialLocation: RoutePath.splash,
      navigatorKey: rootNavigatorKey,
      observers: [
        GoRouterObserver(),
      ],
      errorBuilder: (_, state) => const SplashPage(),
      routes: [
        GoRoute(
          name: RouteName.splash,
          path: RoutePath.splash,
          builder: (context, state) => const SplashPage(),
        ),
        ShellRoute(
          builder: (_, __, child) => MainScaffold(child: child),
          routes: [
            GoRoute(
              name: RouteName.home,
              path: RoutePath.home,
              builder: (_, __) => MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => HomeHeaderBloc(
                      userRepository: sl.get<UserRepository>(),
                      apiTaskRepository: sl.get<ApiTaskRepository>(),
                    )..add(const HomeHeaderEvent.started()),
                    child: const HomePage(),
                  ),
                  BlocProvider(
                    create: (context) => HomeChecklistBloc(
                      apiTaskRepository: sl.get<ApiTaskRepository>(),
                    )..add(const HomeChecklistEvent.started()),
                    child: const HomePage(),
                  ),
                  BlocProvider(
                    create: (context) => HomeProjectsBloc(
                      apiProjectRepository: sl.get<ApiProjectRepository>(),
                    )..add(const HomeProjectsEvent.started()),
                    child: const HomePage(),
                  ),
                ],
                child: const HomePage(),
              ),
            ),
            GoRoute(
              name: RouteName.calendar,
              path: RoutePath.calendar,
              builder: (_, __) => const CalendarPage(),
            ),
            GoRoute(
              name: RouteName.statistics,
              path: RoutePath.statistics,
              builder: (_, __) => const StatisticsPage(),
            ),
            GoRoute(
              name: RouteName.profile,
              path: RoutePath.profile,
              builder: (_, __) => const ProfilePage(),
              routes: [
                GoRoute(
                  name: RouteName.profileEdit,
                  path: RoutePath.profileEdit,
                  parentNavigatorKey: rootNavigatorKey,
                  builder: (context, state) => BlocProvider(
                    create: (context) => ProfileEditBloc(
                      apiUserRepository: sl.get<ApiUserRepository>(),
                      userRepository: sl.get<UserRepository>(),
                    )..add(const ProfileEditEvent.started()),
                    child: const ProfileEditPage(),
                  ),
                ),
                GoRoute(
                  name: RouteName.profileChangePassword,
                  path: RoutePath.profileChangePassword,
                  parentNavigatorKey: rootNavigatorKey,
                  builder: (context, state) => BlocProvider(
                    create: (context) => ChangePasswordBloc(
                      apiAuthRepository: sl.get<ApiAuthRepository>(),
                    ),
                    child: const ChangePasswordPage(),
                  ),
                ),
              ],
            ),
          ],
        ),
        ////////////////////
        // Projects
        ////////////////////
        GoRoute(
          name: RouteName.projects,
          path: RoutePath.projects,
          parentNavigatorKey: rootNavigatorKey,
          builder: (context, state) => BlocProvider(
            create: (context) => ProjectsListBloc(
              apiProjectRepository: sl.get<ApiProjectRepository>(),
            )..add(const ProjectsListEvent.started()),
            child: const ProjectsListPage(),
          ),
          routes: [
            GoRoute(
              name: RouteName.project,
              path: RoutePath.project,
              parentNavigatorKey: rootNavigatorKey,
              builder: (context, state) => BlocProvider(
                create: (context) => ProjectDetailsBloc(
                  apiProjectRepository: sl.get<ApiProjectRepository>(),
                  apiTaskRepository: sl.get<ApiTaskRepository>(),
                )..add(ProjectDetailsEvent.started(state.params['id'] ?? '')),
                child: const ProjectDetailsPage(),
              ),
              routes: [
                GoRoute(
                  name: RouteName.projectEdit,
                  path: RoutePath.projectEdit,
                  parentNavigatorKey: rootNavigatorKey,
                  builder: (context, state) => BlocProvider(
                    create: (context) => ProjectEditBloc(
                      apiProjectRepository: sl.get<ApiProjectRepository>(),
                    )..add(ProjectEditEvent.started(state.params['id'] ?? '')),
                    child: const ProjectEditPage(isUpdate: true),
                  ),
                ),
              ],
            ),
            GoRoute(
              name: RouteName.projectCreate,
              path: RoutePath.projectCreate,
              parentNavigatorKey: rootNavigatorKey,
              builder: (context, state) => BlocProvider(
                create: (context) => ProjectEditBloc(
                  apiProjectRepository: sl.get<ApiProjectRepository>(),
                )..add(const ProjectEditEvent.started('')),
                child: const ProjectEditPage(),
              ),
            )
          ],
        ),
        ////////////////////
        // Authentication
        ////////////////////
        GoRoute(
          name: RouteName.login,
          path: RoutePath.login,
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          name: RouteName.register,
          path: RoutePath.register,
          builder: (context, state) => const RegistrationPage(),
        ),
      ],
    );
    return _router!;
  }
}
