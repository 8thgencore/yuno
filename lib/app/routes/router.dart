import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:yuno/app/app.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/data/repository/user_repository.dart';
import 'package:yuno/domain/repository/api_auth_repository.dart';
import 'package:yuno/domain/repository/api_user_repository.dart';
import 'package:yuno/ui/color_scaffold.dart';
import 'package:yuno/ui/pages/auth/login/view/login_page.dart';
import 'package:yuno/ui/pages/auth/registration/view/registration_page.dart';
import 'package:yuno/ui/pages/home/change_password/bloc/change_password_bloc.dart';
import 'package:yuno/ui/pages/home/change_password/view/change_password_page.dart';
import 'package:yuno/ui/pages/home/edit_profile/bloc/profile_edit_bloc.dart';
import 'package:yuno/ui/pages/home/edit_profile/view/profile_edit_page.dart';
import 'package:yuno/ui/pages/home/profile/view/profile_page.dart';
import 'package:yuno/ui/pages/splash/view/splash_page.dart';

mixin RouterMixin on State<App> {
  final rootNavigatorKey = GlobalKey<NavigatorState>();

  GoRouter? _router;

  GoRouter get router {
    _router ??= GoRouter(
      initialLocation: RoutePath.splash,
      navigatorKey: rootNavigatorKey,
      errorBuilder: (_, state) => SplashPage(
          // goRouterState: state,
          ),
      routes: [
        GoRoute(
          name: RouteName.splash,
          path: RoutePath.splash,
          builder: (context, state) => SplashPage(),
        ),
        ShellRoute(
          builder: (_, __, child) {
            return ColorsScaffold(child: child);
          },
          routes: [
            GoRoute(
              name: RouteName.profile,
              path: RoutePath.profile,
              builder: (_, __) => ProfilePage(),
              routes: [
                GoRoute(
                  name: RouteName.profileEdit,
                  path: RoutePath.profileEdit,
                  builder: (context, state) => BlocProvider(
                    create: (context) => ProfileEditBloc(
                      apiUserRepository: sl.get<ApiUserRepository>(),
                      userRepository: sl.get<UserRepository>(),
                    )..add(const ProfileEditEvent.started()),
                    child: ProfileEditPage(),
                  ),
                ),
                GoRoute(
                  name: RouteName.profileChangePassword,
                  path: RoutePath.profileChangePassword,
                  builder: (context, state) => BlocProvider(
                    create: (context) => ChangePasswordBloc(
                      apiAuthRepository: sl.get<ApiAuthRepository>(),
                    ),
                    child: ChangePasswordPage(),
                  ),
                ),
              ],
            ),
            // GoRoute(
            //   name: RouteName.register,
            //   path: RoutePath.register,
            //   builder: (_, __) => RegistrationPage(),
            //   routes: [
            //     // ColorDetailView.getRoute(
            //     //   Colors.green,
            //     // ),
            //   ],
            // ),
            // GoRoute(
            //   name: RouteName.login,
            //   path: RoutePath.login,
            //   builder: (_, __) => LoginPage(),
            //   routes: [
            //     // ColorDetailView.getRoute(
            //     //   Colors.blue,
            //     // ),
            //   ],
            // ),
          ],
        ),
        GoRoute(
          name: RouteName.login,
          path: RoutePath.login,
          // parentNavigatorKey: rootNavigatorKey,
          builder: (context, state) => LoginPage(),
        ),
        GoRoute(
          name: RouteName.register,
          path: RoutePath.register,
          builder: (context, state) => RegistrationPage(),
        ),
        // ShellRoute(
        //   builder: (context, state, child) {
        //     return HomeScaffold(
        //       child: child,
        //     );
        //   },
        //   routes: [
        //     GoRoute(
        //       name: Routes.home,
        //       path: '/',
        //       builder: (_, __) => const HomeView(),
        //     ),
        //     GoRoute(
        //       name: Routes.product,
        //       path: '/product/:id',
        //       builder: (_, state) {
        //         final id = state.params['id']!;
        //         return ProductView(
        //           id: int.parse(id),
        //         );
        //       },
        //       redirect: (context, state) => authGuard(
        //         context: context,
        //         state: state,
        //         callbackURL: '/product/${state.params['id']}',
        //       ),
        //     ),
        //   ],
        // ),
        // GoRoute(
        //   name: Routes.signIn,
        //   path: '/sign-in',
        //   parentNavigatorKey: rootNavigatorKey,
        //   builder: (_, state) {
        //     final callbackURL = state.queryParams['callbackURL'];
        //     return SignInView(
        //       callbackURL: callbackURL ?? '/',
        //     );
        //   },
        //   redirect: (context, state) {
        //     final isSignedIn = context.read<SessionController>().isSignedIn;
        //     if (isSignedIn) {
        //       return '/';
        //     }
        //     return null;
        //   },
        // ),
        // GoRoute(
        //   name: Routes.profile,
        //   path: '/profile',
        //   parentNavigatorKey: rootNavigatorKey,
        //   builder: (_, __) => const ProfileView(),
        //   redirect: (context, state) => authGuard(
        //     context: context,
        //     state: state,
        //     callbackURL: '/profile',
        //   ),
        // ),
      ],
    );
    return _router!;
  }
}
