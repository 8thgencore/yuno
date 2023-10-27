import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/l10n/l10n.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/splash/bloc/splash_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _SplashPageWidget();
  }
}

class _SplashPageWidget extends StatefulWidget {
  const _SplashPageWidget();

  @override
  State<_SplashPageWidget> createState() => _SplashPageWidgetState();
}

class _SplashPageWidgetState extends State<_SplashPageWidget> {
  late double _deviceHeight;
  late double _deviceWidth;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.sizeOf(context).height;
    _deviceWidth = MediaQuery.sizeOf(context).width;
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state is SplashUnauthorized) {
          context.goNamed(RouteName.login);
        } else if (state is SplashAuthorized) {
          context.goNamed(RouteName.home);
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.white100,
        body: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: _deviceWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: 94),
                  Image.asset(Assets.images.logo.path, width: 70, height: 70),
                  const Text(
                    'yuno.',
                    style: TextStyle(
                      color: AppColors.dark100,
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: _deviceHeight * 0.4),
                  const CircularProgressIndicator(color: AppColors.primary100),
                  const SizedBox(height: 20),
                  Text(
                    context.l10n.splash,
                    style: AppTypography.l14d,
                  ),
                  SizedBox(height: _deviceHeight * 0.2),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(Assets.images.splashOrnament.path),
            ),
          ],
        ),
      ),
    );
  }
}
