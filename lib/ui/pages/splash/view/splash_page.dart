import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/data/repository/token_repository.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/splash/bloc/splash_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late final SplashBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = SplashBloc(tokenRepository: sl.get<TokenRepository>());
    _bloc.add(const SplashLoaded());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: const _SplashPageWidget(),
    );
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
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state is SplashUnauthorized) {
          context.goNamed(RouteName.login);
        } else if (state is SplashAuthorized) {
          context.goNamed(RouteName.profile);
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
                    'The Coolest Task Manager App',
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
