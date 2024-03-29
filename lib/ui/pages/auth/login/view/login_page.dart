import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/domain/repository/api_auth_repository.dart';
import 'package:yuno/l10n/l10n.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/auth/login/bloc/login_bloc.dart';
import 'package:yuno/ui/widgets/buttons/custom_rounded_button.dart';
import 'package:yuno/ui/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(sl.get<IAuthRepository>()),
      child: LoaderOverlay(
        overlayColor: Colors.black.withOpacity(0.4),
        child: const Scaffold(
          body: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.7, 1.0],
                colors: [AppColors.primary100, AppColors.screen100],
              ),
            ),
            child: _LoginPageWidget(),
          ),
        ),
      ),
    );
  }
}

class _LoginPageWidget extends StatelessWidget {
  const _LoginPageWidget();

  static const double _credWidgetH = 306;
  static const double fingerprintWidgetH = 100;
  static const double errorWidgetH = 86;

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginCompleted) {
          context.loaderOverlay.hide();
          context.goNamed(RouteName.splash);
        } else if (state is LoginInProgress) {
          context.loaderOverlay.show();
        } else if (state is LoginFieldsInfo) {
          context.loaderOverlay.hide();
        }
      },
      child: Stack(
        children: [
          BlocBuilder<LoginBloc, LoginState>(
            buildWhen: (_, current) => current is LoginFieldsInfo,
            builder: (context, state) {
              final fieldsInfo = state as LoginFieldsInfo;
              final error = fieldsInfo.serverError;
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  const _TopInfoWidget(),
                  SizedBox(
                    height: error != null
                        ? (_credWidgetH + fingerprintWidgetH + errorWidgetH)
                        : (_credWidgetH + fingerprintWidgetH),
                  ),
                ],
              );
            },
          ),
          SizedBox(
            width: double.infinity,
            child: Image.asset(Assets.images.signOrnament.path, fit: BoxFit.cover),
          ),
          BlocBuilder<LoginBloc, LoginState>(
            buildWhen: (_, current) => current is LoginFieldsInfo,
            builder: (context, state) {
              final fieldsInfo = state as LoginFieldsInfo;
              final error = fieldsInfo.serverError;
              return error != null
                  ? Align(
                      alignment: Alignment.bottomCenter,
                      child: _ErrorWidget(
                        height: _credWidgetH + fingerprintWidgetH + errorWidgetH,
                        error: error,
                      ),
                    )
                  : const SizedBox();
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: _credWidgetH + fingerprintWidgetH,
              width: double.infinity,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                color: AppColors.dark100,
              ),
              child: const _FingerprintWidget(),
            ),
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
      padding: const EdgeInsets.symmetric(horizontal: 24),
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        children: [
          Text(l10n.loginPageTitle, style: AppTypography.b24l),
          const SizedBox(height: 12),
          Text(
            l10n.loginPageDescription,
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
    required this.error,
  });

  final double height;
  final String error;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height,
          width: double.infinity,
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            color: AppColors.error100,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.l10n.errorServerError,
                style: AppTypography.b16l,
              ),
              const SizedBox(height: 4),
              Text(
                error,
                textAlign: TextAlign.center,
                style: AppTypography.l14l.copyWith(height: 22 / 14),
              ),
            ],
          ),
        ),
        Positioned(
          top: 16 - 10,
          right: 24 - 10,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => context.read<LoginBloc>().add(const LoginCloseError()),
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

class _FingerprintWidget extends StatelessWidget {
  const _FingerprintWidget();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: AppColors.screen10,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Assets.svg.icFinger.svg(),
          ),
        ),
        Text(
          l10n.loginPageFingerprint,
          style: AppTypography.l14l,
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.white100,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          child: Text(
            l10n.loginPageSetUp,
            style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.primary100),
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
  late final FocusNode _passwordFocusNode;

  @override
  void initState() {
    super.initState();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        color: AppColors.screen100,
      ),
      child: Column(
        children: [
          _EmailTextField(
            emailFocusNode: _emailFocusNode,
            passwordFocusNode: _passwordFocusNode,
          ),
          const SizedBox(height: 20),
          _PasswordTextField(passwordFocusNode: _passwordFocusNode),
          Row(
            children: [
              const Spacer(),
              TextButton(
                child: Text(l10n.loginPageForgotPass, style: AppTypography.l14d),
                onPressed: () async => context.pushNamed(RouteName.forgotPassword),
              ),
            ],
          ),
          const _LoginButton(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                l10n.loginPageDoesNotHaveAccount,
                style: AppTypography.l14d,
              ),
              TextButton(
                child: Text(
                  l10n.signUp,
                  style: AppTypography.l14d.copyWith(color: AppColors.primary100),
                ),
                onPressed: () => context.goNamed(RouteName.register),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _EmailTextField extends StatelessWidget {
  const _EmailTextField({
    required FocusNode emailFocusNode,
    required FocusNode passwordFocusNode,
  })  : _emailFocusNode = emailFocusNode,
        _passwordFocusNode = passwordFocusNode;

  final FocusNode _emailFocusNode;
  final FocusNode _passwordFocusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (_, current) => current is LoginFieldsInfo,
      builder: (context, state) {
        final fieldsInfo = state as LoginFieldsInfo;
        final error = fieldsInfo.emailError;
        return CustomTextField(
          focusNode: _emailFocusNode,
          labelText: context.l10n.loginPageEmail,
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
          onChanged: (text) => context.read<LoginBloc>().add(LoginEmailChanged(text)),
          onSubmitted: (_) => _passwordFocusNode.requestFocus(),
        );
      },
    );
  }
}

class _PasswordTextField extends StatefulWidget {
  const _PasswordTextField({
    required FocusNode passwordFocusNode,
  }) : _passwordFocusNode = passwordFocusNode;

  final FocusNode _passwordFocusNode;

  @override
  State<_PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<_PasswordTextField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (_, current) => current is LoginFieldsInfo,
      builder: (context, state) {
        final fieldsInfo = state as LoginFieldsInfo;
        final error = fieldsInfo.passwordError;
        return CustomTextField(
          focusNode: widget._passwordFocusNode,
          labelText: context.l10n.loginPagePassword,
          obscureText: _isObscure,
          keyboardType: TextInputType.visiblePassword,
          textColor: error == null ? AppColors.dark100 : AppColors.error100,
          onChanged: (text) => context.read<LoginBloc>().add(LoginPasswordChanged(text)),
          onSubmitted: (_) {
            FocusManager.instance.primaryFocus?.unfocus();
            context.read<LoginBloc>().add(const LoginAuthAccount());
          },
          prefixIcon: IconButton(
            icon: Assets.svg.lock.svg(
              height: 26,
              colorFilter: ColorFilter.mode(
                error == null ? AppColors.grey60 : AppColors.error100,
                BlendMode.srcIn,
              ),
            ),
            onPressed: () {},
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _isObscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,
              color: AppColors.grey40,
            ),
            onPressed: () {
              setState(() => _isObscure = !_isObscure);
            },
          ),
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    // return BlocSelector<LoginBloc, LoginState, bool>(
    //   selector: (state) => state is LoginInProgress,
    //   builder: (context, inProgress) {
    return CustomRoundedButton(
      textButton: context.l10n.login,
      onPressed: () {
        final currentNode = FocusScope.of(context);
        if (currentNode.focusedChild != null && !currentNode.hasPrimaryFocus) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
        context.read<LoginBloc>().add(const LoginAuthAccount());
      },
      // textColor: AppColors.white100,
      // buttonColor: AppColors.primary100,
      // textColor: inProgress ? AppColors.white100 : AppColors.grey100,
      // buttonColor: inProgress ? AppColors.primary100 : AppColors.dark10,
    );
    // },
    // );
  }
}
