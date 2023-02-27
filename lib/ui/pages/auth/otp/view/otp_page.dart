import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/domain/repository/api_auth_repository.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/auth/otp/bloc/otp_bloc.dart';
import 'package:yuno/ui/pages/auth/otp/widget/otp_widget.dart';
import 'package:yuno/ui/widgets/buttons/custom_rounded_button.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OtpBloc(sl.get<IAuthRepository>()),
      child: const LoaderOverlay(
        child: Scaffold(
          body: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.8, 1.0],
                colors: [AppColors.primary100, AppColors.screen100],
              ),
            ),
            child: _OtpPageWidget(),
          ),
        ),
      ),
    );
  }
}

class _OtpPageWidget extends StatelessWidget {
  const _OtpPageWidget();

  static const double _credWidgetH = 232;
  static const double _errorWidgetH = 100;

  @override
  Widget build(BuildContext context) {
    return BlocListener<OtpBloc, OtpState>(
      listener: (context, state) async {
        switch (state.status) {
          case OtpStatus.initial:
            break;
          case OtpStatus.loading:
            break;
          case OtpStatus.failure:
            break;
          case OtpStatus.success:
            await context.pushNamed(RouteName.resetPassword);
            break;
        }
      },
      child: Stack(
        children: [
          BlocBuilder<OtpBloc, OtpState>(
            builder: (context, state) {
              final error = state.serverError;
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  const _TopInfoWidget(),
                  SizedBox(height: error != null ? (_credWidgetH + _errorWidgetH) : _credWidgetH),
                ],
              );
            },
          ),
          SizedBox(
            width: double.infinity,
            child: Image.asset(Assets.images.signOrnament.path, fit: BoxFit.cover),
          ),
          BlocBuilder<OtpBloc, OtpState>(
            builder: (context, state) {
              final error = state.serverError;
              return error != null
                  ? Align(
                      alignment: Alignment.bottomCenter,
                      child: _ErrorWidget(
                        height: _errorWidgetH,
                        paddingBottom: _credWidgetH,
                        text: error,
                      ),
                    )
                  : const SizedBox();
            },
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(child: _BottomWidget()),
          ),
        ],
      ),
    );
  }
}

class _TopInfoWidget extends StatelessWidget {
  const _TopInfoWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text('Verify Your Account', style: AppTypography.b24l),
          const SizedBox(height: 12),
          Text(
            'One step closer. '
            'We have sent you an OTP code to your email, '
            'please check it on your inbox or spam box.',
            style: AppTypography.l14l.copyWith(height: 2),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _ErrorWidget extends StatelessWidget {
  const _ErrorWidget({
    required this.height,
    required this.paddingBottom,
    required this.text,
  });

  final double height;
  final double paddingBottom;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height + paddingBottom,
          width: double.infinity,
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            color: AppColors.error100,
          ),
          child: SizedBox(
            height: height,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Verification Code Invalid',
                  style: AppTypography.b16l,
                ),
                const SizedBox(height: 4),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: AppTypography.l14l.copyWith(height: 22 / 14),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 16 - 10,
          right: 24 - 10,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => context.read<OtpBloc>().add(const OtpEvent.closedError()),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Icon(Icons.close, color: AppColors.white80, size: 20),
            ),
          ),
        ),
      ],
    );
  }
}

class _BottomWidget extends StatefulWidget {
  const _BottomWidget();

  @override
  State<_BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<_BottomWidget> {
  late final FocusNode _emailFocusNode;

  @override
  void initState() {
    super.initState();
    _emailFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 32, left: 24, right: 24, bottom: 24),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        color: AppColors.screen100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Verification Code', style: AppTypography.l12g),
          const SizedBox(height: 12),
          const OtpWidget(),
          const SizedBox(height: 40),
          const _ContinueButton(),
        ],
      ),
    );
  }
}

class _ContinueButton extends StatelessWidget {
  const _ContinueButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OtpBloc, OtpState>(
      builder: (context, state) {
        return CustomRoundedButton(
          textButton: 'Continue',
          onPressed: state.isValid
              ? () {
                  final currentNode = FocusScope.of(context);
                  if (currentNode.focusedChild != null && !currentNode.hasPrimaryFocus) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  }
                  context.read<OtpBloc>().add(const OtpEvent.continued());
                }
              : null,
        );
      },
    );
  }
}
