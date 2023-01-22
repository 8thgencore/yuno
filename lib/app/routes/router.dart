import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:yuno/app/app.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/data/repository/user_repository.dart';
import 'package:yuno/domain/repository/api_auth_repository.dart';
import 'package:yuno/domain/repository/api_task_repository.dart';
import 'package:yuno/domain/repository/api_user_repository.dart';
import 'package:yuno/ui/pages/auth/login/view/login_page.dart';
import 'package:yuno/ui/pages/auth/registration/view/registration_page.dart';
import 'package:yuno/ui/pages/main/calendar/view/statistics_page.dart';
import 'package:yuno/ui/pages/main/home/bloc/home_header_bloc.dart';
import 'package:yuno/ui/pages/main/home/view/home_page.dart';
import 'package:yuno/ui/pages/main/main_scaffold.dart';
import 'package:yuno/ui/pages/main/profile_pages/change_password/bloc/change_password_bloc.dart';
import 'package:yuno/ui/pages/main/profile_pages/change_password/view/change_password_page.dart';
import 'package:yuno/ui/pages/main/profile_pages/edit_profile/bloc/profile_edit_bloc.dart';
import 'package:yuno/ui/pages/main/profile_pages/edit_profile/view/profile_edit_page.dart';
import 'package:yuno/ui/pages/main/profile_pages/profile/view/profile_page.dart';
import 'package:yuno/ui/pages/main/statistics/view/statistics_page.dart';
import 'package:yuno/ui/pages/splash/view/splash_page.dart';

mixin RouterMixin on State<App> {
  final rootNavigatorKey = GlobalKey<NavigatorState>();

  GoRouter? _router;

  GoRouter get router {
    _router ??= GoRouter(
      initialLocation: RoutePath.splash,
      navigatorKey: rootNavigatorKey,
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
              builder: (_, __) => BlocProvider(
                create: (context) => HomeHeaderBloc(
                  apiTaskRepository: sl.get<ApiTaskRepository>(),
                  userRepository: sl.get<UserRepository>(),
                )..add(const HomeHeaderEvent.started()),
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
