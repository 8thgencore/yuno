
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yuno/app/app.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/ui/color_scaffold.dart';
import 'package:yuno/ui/pages/home/profile/view/profile_page.dart';
import 'package:yuno/ui/pages/splash/view/splash_page.dart';

mixin RouterMixin on State<App> {
  final rootNavigatorKey = GlobalKey<NavigatorState>();

  GoRouter? _router;

  GoRouter get router {
    _router ??= GoRouter(
      initialLocation: '/splash',
      navigatorKey: rootNavigatorKey,
      errorBuilder: (_, state) => SplashPage(
        // goRouterState: state,
      ),
      routes: [
        ShellRoute(
          builder: (_, __, child) {
            return ColorsScaffold(child: child);
          },
          routes: [
            GoRoute(
              name: Routes.profileEdit,
              path: "/${Routes.profileEdit}",
              builder: (_, __) => ProfilePage(),
              routes: [
                // ColorDetailView.getRoute(
                //   Colors.red,
                // ),
              ],
            ),
            GoRoute(
              name: Routes.profileChangePassword,
              path: "/${Routes.profileChangePassword}",
              builder: (_, __) => ProfilePage(),
              routes: [
                // ColorDetailView.getRoute(
                //   Colors.green,
                // ),
              ],
            ),
            GoRoute(
              name: Routes.profile,
              path:  "/${Routes.profile}",
              builder: (_, __) => ProfilePage(),
              routes: [
                // ColorDetailView.getRoute(
                //   Colors.blue,
                // ),
              ],
            ),
          ],
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
