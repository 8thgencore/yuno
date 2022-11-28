import 'package:flutter/material.dart';
import 'package:yuno/ui/auth/login/view/login_page.dart';
import 'package:yuno/ui/auth/registration/view/registration_page.dart';
import 'package:yuno/ui/home/view/home_page.dart';
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
      case '/sign_up':
        route = MaterialPageRoute<dynamic>(
          builder: (_) => const RegistrationPage(),
          settings: RouteSettings(name: settings.name),
        );
        break;
      case '/sign_in':
        route = MaterialPageRoute<dynamic>(
          builder: (_) => const LoginPage(),
          settings: RouteSettings(name: settings.name),
        );
        break;
      case '/home':
        route = MaterialPageRoute<dynamic>(
          builder: (_) => const HomePage(),
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
