// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:yuno/auth/view/sign_up_page.dart';
import 'package:yuno/l10n/l10n.dart';
import 'package:yuno/resources/colors.dart';
import 'package:yuno/routes/routes.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: AppColors.primaryColor),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
        fontFamily: 'Poppins',
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      onGenerateRoute: routes,
      initialRoute: '/splash',
      supportedLocales: AppLocalizations.supportedLocales,
      home: const SignUpPage(),
    );
  }
}
