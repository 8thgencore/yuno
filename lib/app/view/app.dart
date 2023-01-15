import 'package:flutter/material.dart';
import 'package:yuno/app/routes/router.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/auth/registration/view/registration_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with RouterMixin{
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: AppColors.primary100),
        // colorScheme: ColorScheme.fromSwatch(
        //   accentColor: const Color(0xFF13B9FF),
        // ),
        fontFamily: FontFamily.poppins,
      ),
      // localizationsDelegates: const [
      //   AppLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      // ],
      // supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router,
      // onGenerateRoute: routes,
      // initialRoute: RoutesPage.splash,
      // home: const RegistrationPage(),
    );
  }
}
