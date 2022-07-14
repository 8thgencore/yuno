import 'package:flutter/material.dart';
import 'package:yuno/ui/auth/view/sign_in_page.dart';
import 'package:yuno/ui/auth/view/sign_up_page.dart';
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
          builder: (_) => const SignUpPage(),
          settings: RouteSettings(name: settings.name),
        );
        break;
      case '/sign_in':
        route = MaterialPageRoute<dynamic>(
          builder: (_) => const SignInPage(),
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
