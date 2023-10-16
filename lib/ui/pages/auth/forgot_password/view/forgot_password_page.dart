import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/domain/repository/api_auth_repository.dart';
import 'package:yuno/l10n/l10n.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/auth/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:yuno/ui/widgets/buttons/custom_rounded_button.dart';
import 'package:yuno/ui/widgets/custom_text_field.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgotPasswordBloc(sl.get<IAuthRepository>()),
      child: LoaderOverlay(
        overlayColor: Colors.black.withOpacity(0.4),
        child: const Scaffold(
          body: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.8, 1.0],
                colors: [AppColors.primary100, AppColors.screen100],
              ),
            ),
            child: _ForgotPasswordPageWidget(),
          ),
        ),
      ),
    );
  }
}

class _ForgotPasswordPageWidget extends StatelessWidget {
  const _ForgotPasswordPageWidget();

  static const double _credWidgetH = 208;
  static const double _errorWidgetH = 100;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (context, state) async {
        switch (state.status) {
          case ForgotPasswordStatus.initial:
            break;
          case ForgotPasswordStatus.loading:
            break;
          case ForgotPasswordStatus.failure:
            break;
          case ForgotPasswordStatus.success:
            await context.pushNamed(RouteName.otp);
        }
      },
      child: Stack(
        children: [
          BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
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
          BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
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
    final l10n = context.l10n;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            l10n.forgotPassPageTitle,
            style: AppTypography.b24l,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            l10n.forgotPassPageDescription,
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
                  context.l10n.errorServerError,
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
            onTap: () =>
                context.read<ForgotPasswordBloc>().add(const ForgotPasswordEvent.closedError()),
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

    SchedulerBinding.instance.addPostFrameCallback((_) => _addFocusLostHandlers());
  }

  void _addFocusLostHandlers() {
    _emailFocusNode.addListener(() {
      if (!_emailFocusNode.hasFocus) {
        context.read<ForgotPasswordBloc>().add(const ForgotPasswordEvent.emailFocusLost());
      }
    });
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
        children: [
          _EmailTextField(emailFocusNode: _emailFocusNode),
          const SizedBox(height: 40),
          const _ContinueButton(),
        ],
      ),
    );
  }
}

class _EmailTextField extends StatelessWidget {
  const _EmailTextField({
    required FocusNode emailFocusNode,
  }) : _emailFocusNode = emailFocusNode;

  final FocusNode _emailFocusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      builder: (context, state) {
        final error = state.emailError;
        return CustomTextField(
          focusNode: _emailFocusNode,
          labelText: context.l10n.forgotPassPageEmail,
          keyboardType: TextInputType.emailAddress,
          textColor: error == null ? AppColors.dark100 : AppColors.error100,
          prefixIcon: IconButton(
            icon: Assets.svg.email.svg(
              height: 26,
              colorFilter: ColorFilter.mode(
                error == null ? AppColors.grey60 : AppColors.error100,
                BlendMode.srcIn,
              ),
            ),
            onPressed: () {},
          ),
          onChanged: (text) =>
              context.read<ForgotPasswordBloc>().add(ForgotPasswordEvent.emailChanged(text)),
          onSubmitted: (_) {
            if (state.isValid) {
              FocusManager.instance.primaryFocus?.unfocus();
              context.read<ForgotPasswordBloc>().add(const ForgotPasswordEvent.continued());
            }
          },
        );
      },
    );
  }
}

class _ContinueButton extends StatelessWidget {
  const _ContinueButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      builder: (context, state) {
        return CustomRoundedButton(
          textButton: context.l10n.continueBtn,
          onPressed: state.isValid
              ? () {
                  final currentNode = FocusScope.of(context);
                  if (currentNode.focusedChild != null && !currentNode.hasPrimaryFocus) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  }
                  context.read<ForgotPasswordBloc>().add(const ForgotPasswordEvent.continued());
                }
              : null,
        );
      },
    );
  }
}
