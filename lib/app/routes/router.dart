import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:yuno/app/app.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/app/routes/observer.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/data/repository/token_data_repository.dart';
import 'package:yuno/domain/repository/api_auth_repository.dart';
import 'package:yuno/domain/repository/api_project_repository.dart';
import 'package:yuno/domain/repository/api_task_repository.dart';
import 'package:yuno/domain/repository/api_user_repository.dart';
import 'package:yuno/ui/pages/auth/forgot_password/view/forgot_password_page.dart';
import 'package:yuno/ui/pages/auth/login/view/login_page.dart';
import 'package:yuno/ui/pages/auth/otp/view/otp_page.dart';
import 'package:yuno/ui/pages/auth/registration/view/registration_page.dart';
import 'package:yuno/ui/pages/auth/reset_password/view/reset_password_page.dart';
import 'package:yuno/ui/pages/main/calendar/bloc/calendar_bloc.dart';
import 'package:yuno/ui/pages/main/calendar/view/calendar_page.dart';
import 'package:yuno/ui/pages/main/home/bloc/home_checklist_bloc.dart';
import 'package:yuno/ui/pages/main/home/bloc/home_header_bloc.dart';
import 'package:yuno/ui/pages/main/home/bloc/home_projects_bloc.dart';
import 'package:yuno/ui/pages/main/home/view/home_page.dart';
import 'package:yuno/ui/pages/main/main_scaffold.dart';
import 'package:yuno/ui/pages/main/profile/change_password/bloc/change_password_bloc.dart';
import 'package:yuno/ui/pages/main/profile/change_password/view/change_password_page.dart';
import 'package:yuno/ui/pages/main/profile/edit_profile/bloc/profile_edit_bloc.dart';
import 'package:yuno/ui/pages/main/profile/edit_profile/view/profile_edit_page.dart';
import 'package:yuno/ui/pages/main/profile/profile_page/view/profile_page.dart';
import 'package:yuno/ui/pages/main/project/project_details/bloc/project_details_bloc.dart';
import 'package:yuno/ui/pages/main/project/project_details/view/project_details_page.dart';
import 'package:yuno/ui/pages/main/project/project_edit/bloc/project_edit_bloc.dart';
import 'package:yuno/ui/pages/main/project/project_edit/view/project_page.dart';
import 'package:yuno/ui/pages/main/project/project_members/bloc/project_members_bloc.dart';
import 'package:yuno/ui/pages/main/project/project_members/view/project_members_page.dart';
import 'package:yuno/ui/pages/main/project/projects_list/bloc/projects_list_bloc.dart';
import 'package:yuno/ui/pages/main/project/projects_list/view/projects_list_page.dart';
import 'package:yuno/ui/pages/main/statistics/bloc/statistics_bloc.dart';
import 'package:yuno/ui/pages/main/statistics/view/statistics_page.dart';
import 'package:yuno/ui/pages/main/task/task_edit/bloc/task_edit_bloc.dart';
import 'package:yuno/ui/pages/main/task/task_edit/view/task_page.dart';
import 'package:yuno/ui/pages/splash/bloc/splash_bloc.dart';
import 'package:yuno/ui/pages/splash/view/splash_page.dart';

mixin RouterMixin on State<App> {
  final _rootNavigatorKey = GlobalKey<NavigatorState>();
  final _shellNavigatorHomeScreenKey = GlobalKey<NavigatorState>(debugLabel: 'shellHomeScreen');
  final _shellNavigatorCalendarScreenKey =
      GlobalKey<NavigatorState>(debugLabel: 'shellCalendarScreen');
  final _shellNavigatorStatisticsScreenKey =
      GlobalKey<NavigatorState>(debugLabel: 'shellStatisticsScreen');
  final _shellNavigatorProfileScreenKey =
      GlobalKey<NavigatorState>(debugLabel: 'shellProfileScreen');

  GoRouter? _router;

  GoRouter get router {
    _router ??= GoRouter(
      initialLocation: RoutePath.splash,
      navigatorKey: _rootNavigatorKey,
      observers: [
        GoRouterObserver(),
      ],
      errorBuilder: (_, state) => const SplashPage(),
      routes: [
        GoRoute(
          name: RouteName.splash,
          path: RoutePath.splash,
          builder: (context, state) => BlocProvider(
            create: (context) => SplashBloc(
              tokenDataRepository: sl.get<TokenDataRepository>(),
              userRepository: sl.get<IUserRepository>(),
              taskRepository: sl.get<ITaskRepository>(),
            )..add(const SplashLoaded()),
            child: const SplashPage(),
          ),
        ),
        StatefulShellRoute.indexedStack(
          builder: (_, __, child) => MainScaffold(child: child),
          branches: [
            StatefulShellBranch(
              navigatorKey: _shellNavigatorHomeScreenKey,
              routes: [
                GoRoute(
                  name: RouteName.home,
                  path: RoutePath.home,
                  builder: (_, __) => MultiBlocProvider(
                    providers: [
                      BlocProvider(
                        create: (context) => HomeHeaderBloc(
                          userRepository: sl.get<IUserRepository>(),
                          taskRepository: sl.get<ITaskRepository>(),
                        )..add(const HomeHeaderEvent.started()),
                        child: const HomePage(),
                      ),
                      BlocProvider(
                        create: (context) => HomeChecklistBloc(
                          taskRepository: sl.get<ITaskRepository>(),
                        )..add(const HomeChecklistEvent.started()),
                        child: const HomePage(),
                      ),
                      BlocProvider(
                        create: (context) => HomeProjectsBloc(
                          projectRepository: sl.get<IProjectRepository>(),
                        )..add(const HomeProjectsEvent.started()),
                        child: const HomePage(),
                      ),
                    ],
                    child: const HomePage(),
                  ),
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _shellNavigatorCalendarScreenKey,
              routes: [
                GoRoute(
                  name: RouteName.calendar,
                  path: RoutePath.calendar,
                  builder: (context, state) => BlocProvider(
                    create: (context) => CalendarBloc(
                      taskRepository: sl.get<ITaskRepository>(),
                    )..add(const CalendarEvent.started()),
                    child: const CalendarPage(),
                  ),
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _shellNavigatorStatisticsScreenKey,
              routes: [
                GoRoute(
                  name: RouteName.statistics,
                  path: RoutePath.statistics,
                  builder: (context, state) => BlocProvider(
                    create: (context) => StatisticsBloc(
                      projectRepository: sl.get<IProjectRepository>(),
                    )..add(const StatisticsEvent.started()),
                    child: const StatisticsPage(),
                  ),
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _shellNavigatorProfileScreenKey,
              routes: [
                GoRoute(
                  name: RouteName.profile,
                  path: RoutePath.profile,
                  builder: (_, __) => const ProfilePage(),
                  routes: [
                    GoRoute(
                      name: RouteName.profileEdit,
                      path: RoutePath.profileEdit,
                      parentNavigatorKey: _rootNavigatorKey,
                      builder: (context, state) => BlocProvider(
                        create: (context) => ProfileEditBloc(
                          userRepository: sl.get<IUserRepository>(),
                        )..add(const ProfileEditEvent.started()),
                        child: const ProfileEditPage(),
                      ),
                    ),
                    GoRoute(
                      name: RouteName.profileChangePassword,
                      path: RoutePath.profileChangePassword,
                      parentNavigatorKey: _rootNavigatorKey,
                      builder: (context, state) => BlocProvider(
                        create: (context) => ChangePasswordBloc(
                          authRepository: sl.get<IAuthRepository>(),
                        ),
                        child: const ChangePasswordPage(),
                      ),
                    ),
                    GoRoute(
                      name: RouteName.profileProjects,
                      path: RoutePath.profileProjects,
                      parentNavigatorKey: _rootNavigatorKey,
                      builder: (context, state) => BlocProvider(
                        create: (context) => ProjectsListBloc(
                          projectRepository: sl.get<IProjectRepository>(),
                        )..add(const ProjectsListEvent.started(isSelf: true)),
                        child: const ProjectsListPage(),
                      ),
                    ),
                  ],
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
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) => BlocProvider(
            create: (context) => ProjectsListBloc(
              projectRepository: sl.get<IProjectRepository>(),
            )..add(const ProjectsListEvent.started(isSelf: false)),
            child: const ProjectsListPage(),
          ),
          routes: [
            GoRoute(
              name: RouteName.projectCreate,
              path: RoutePath.projectCreate,
              parentNavigatorKey: _rootNavigatorKey,
              builder: (context, state) => BlocProvider(
                create: (context) => ProjectEditBloc(
                  projectRepository: sl.get<IProjectRepository>(),
                )..add(const ProjectEditEvent.started('')),
                child: const ProjectEditPage(),
              ),
            ),
            GoRoute(
              name: RouteName.project,
              path: RoutePath.project,
              parentNavigatorKey: _rootNavigatorKey,
              builder: (context, state) => BlocProvider(
                create: (context) => ProjectDetailsBloc(
                  userRepository: sl.get<IUserRepository>(),
                  projectRepository: sl.get<IProjectRepository>(),
                  taskRepository: sl.get<ITaskRepository>(),
                )..add(ProjectDetailsEvent.started(state.pathParameters['id'] ?? '')),
                child: const ProjectDetailsPage(),
              ),
              routes: [
                GoRoute(
                  name: RouteName.projectEdit,
                  path: RoutePath.projectEdit,
                  parentNavigatorKey: _rootNavigatorKey,
                  builder: (context, state) => BlocProvider(
                    create: (context) => ProjectEditBloc(
                      projectRepository: sl.get<IProjectRepository>(),
                    )..add(ProjectEditEvent.started(state.pathParameters['id'] ?? '')),
                    child: const ProjectEditPage(isUpdate: true),
                  ),
                ),
                GoRoute(
                  name: RouteName.projectMembers,
                  path: RoutePath.projectMembers,
                  parentNavigatorKey: _rootNavigatorKey,
                  builder: (context, state) => BlocProvider(
                    create: (context) => ProjectMembersBloc(
                      projectRepository: sl.get<IProjectRepository>(),
                    )..add(ProjectMembersEvent.started(state.pathParameters['id'] ?? '')),
                    child: const ProjectMembersPage(),
                  ),
                ),
              ],
            ),
          ],
        ),
        ////////////////////
        // Tasks
        ////////////////////
        GoRoute(
          name: RouteName.taskEdit,
          path: RoutePath.taskEdit,
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) => BlocProvider(
            create: (context) => TaskEditBloc(
              taskRepository: sl.get<ITaskRepository>(),
            )..add(
                TaskEditEvent.started(
                  id: state.pathParameters['id'] ?? '',
                  projectId: '',
                ),
              ),
            child: const TaskEditPage(isUpdate: true),
          ),
        ),
        GoRoute(
          name: RouteName.taskCreate,
          path: RoutePath.taskCreate,
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) => BlocProvider(
            create: (context) => TaskEditBloc(
              taskRepository: sl.get<ITaskRepository>(),
            )..add(
                TaskEditEvent.started(
                  id: '',
                  projectId: state.uri.queryParameters['project_id'] ?? '',
                ),
              ),
            child: const TaskEditPage(),
          ),
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
        GoRoute(
          name: RouteName.forgotPassword,
          path: RoutePath.forgotPassword,
          builder: (context, state) => const ForgotPasswordPage(),
        ),
        GoRoute(
          name: RouteName.otp,
          path: RoutePath.otp,
          builder: (context, state) => const OtpPage(),
        ),
        GoRoute(
          name: RouteName.resetPassword,
          path: RoutePath.resetPassword,
          builder: (context, state) => const ResetPasswordPage(),
        ),
      ],
    );
    return _router!;
  }
}
