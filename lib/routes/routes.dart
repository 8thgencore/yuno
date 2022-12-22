import 'package:flutter/material.dart';
import 'package:yuno/ui/auth/login/view/login_page.dart';
import 'package:yuno/ui/auth/registration/view/registration_page.dart';
import 'package:yuno/ui/home/edit_profile/view/edit_profile_page.dart';
import 'package:yuno/ui/home/profile/view/profile_page.dart';
import 'package:yuno/ui/splash/view/splash_page.dart';

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
        builder: (_) => const ProfileEditPage(),
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
