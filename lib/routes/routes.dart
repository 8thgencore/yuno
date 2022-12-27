import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/data/repository/user_repository.dart';
import 'package:yuno/domain/repository/api_user_repository.dart';
import 'package:yuno/ui/pages/auth/login/view/login_page.dart';
import 'package:yuno/ui/pages/auth/registration/view/registration_page.dart';
import 'package:yuno/ui/pages/home/edit_profile/bloc/profile_edit_bloc.dart';
import 'package:yuno/ui/pages/home/edit_profile/view/profile_edit_page.dart';
import 'package:yuno/ui/pages/home/profile/view/profile_page.dart';
import 'package:yuno/ui/pages/splash/view/splash_page.dart';

Route Function(RouteSettings) get routes {
  return (RouteSettings settings) {
    Route route;

    switch (settings.name) {
      // case '/info':
      //   route = MaterialPageRoute<dynamic>(
      //     builder: (_) => const HomePage(),
      //     settings: RouteSettings(name: settings.name),
      //   );
      //   break;
      case RoutesPage.register:
        route = MaterialPageRoute<dynamic>(
          builder: (_) => const RegistrationPage(),
          settings: RouteSettings(name: settings.name),
        );
        break;
      case RoutesPage.login:
        route = MaterialPageRoute<dynamic>(
          builder: (_) => const LoginPage(),
          settings: RouteSettings(name: settings.name),
        );
        break;
      case RoutesPage.profile:
        route = MaterialPageRoute<dynamic>(
          builder: (_) => const ProfilePage(),
          settings: RouteSettings(name: settings.name),
        );
        break;
      case RoutesPage.profileEdit:
        route = MaterialPageRoute<dynamic>(
          builder: (_) => BlocProvider(
            create: (context) => ProfileEditBloc(
              apiUserRepository: sl.get<ApiUserRepository>(),
              userRepository: sl.get<UserRepository>(),
            )..add(const ProfileEditEvent.started()),
            child: const ProfileEditPage(),
          ),
          settings: RouteSettings(name: settings.name),
        );
        break;
      default:
        route = MaterialPageRoute<dynamic>(
          builder: (_) => const SplashPage(),
          settings: RouteSettings(name: settings.name),
        );
        break;
    }

    return route;
  };
}

abstract class RoutesPage {
  const RoutesPage._();

  static const splash = '/splash';
  static const register = '/register';
  static const login = '/login';
  static const home = '/home';
  static const profile = '/profile';
  static const profileEdit = '/profile/edit';
}
