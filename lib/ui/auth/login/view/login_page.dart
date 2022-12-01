import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/auth/login/bloc/login_bloc.dart';
import 'package:yuno/ui/auth/widgets/custom_rounded_button.dart';
import 'package:yuno/ui/auth/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Scaffold(
        appBar: AppBar(toolbarHeight: 0, elevation: 0),
        backgroundColor: AppColors.primary100,
        body: const SafeArea(
          child: _LoginPageWidget(),
        ),
      ),
    );
  }
}

class _LoginPageWidget extends StatelessWidget {
  const _LoginPageWidget({super.key});

  static const double _credWidgetH = 312;
  static const double fingerprintWidgetH = 100;
  static const double errorWidgetH = 106;

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginCompleted) {
          Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
        }
      },
      child: Stack(
        children: [
          BlocSelector<LoginBloc, LoginState, bool>(
            selector: (state) => state is LoginError,
            builder: (context, isError) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  const _TopInfoWidget(),
                  SizedBox(
                    height: isError
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
          BlocSelector<LoginBloc, LoginState, bool>(
            selector: (state) => state is LoginError,
            builder: (context, isError) {
              return isError
                  ? const Align(
                      alignment: Alignment.bottomCenter,
                      child: _ErrorWidget(height: _credWidgetH + fingerprintWidgetH + errorWidgetH),
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

class _ErrorWidget extends StatelessWidget {
  const _ErrorWidget({required this.height});

  final double height;

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
            children: [
              Text(
                'Password or Email Invalid',
                style: AppTypography.b16l,
              ),
              const SizedBox(height: 4),
              Text(
                'Seems like you’ve entered wrong combination of email and password, please try again.',
                textAlign: TextAlign.center,
                style: AppTypography.r14l.copyWith(height: 22 / 14),
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
                child: Icon(Icons.close, color: AppColors.white80, size: 20)),
          ),
        )
      ],
    );
  }
}

class _TopInfoWidget extends StatelessWidget {
  const _TopInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text('Welcome Back!', style: AppTypography.b24l),
          const SizedBox(height: 12),
          Text(
            'Login to your account by entering your email\n'
            'and password below, we are really happy\n'
            'to see you come back!',
            style: AppTypography.r14l.copyWith(height: 2),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _FingerprintWidget extends StatelessWidget {
  const _FingerprintWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
            child: Image.asset(Assets.images.fingerprint.path),
          ),
        ),
        Text(
          'New! Fingerprint\nFast-Login',
          style: AppTypography.r14l,
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.white100,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          child: const Text(
            'Set Up',
            style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.primary100),
          ),
        ),
      ],
    );
  }
}

class _BottomWidget extends StatelessWidget {
  const _BottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        color: AppColors.screen100,
      ),
      child: Column(
        children: [
          const _EmailTextField(),
          const SizedBox(height: 20),
          const _PasswordTextField(),
          Row(
            children: [
              const Spacer(),
              TextButton(
                child: Text('Forgot Password?', style: AppTypography.r14d),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/splash',
                  (route) => false,
                ),
              ),
            ],
          ),
          const _LoginButton(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Doesn't have an account yet?",
                style: AppTypography.r14d,
              ),
              TextButton(
                child: Text(
                  'Sign Up',
                  style: AppTypography.r14d.copyWith(color: AppColors.primary100),
                ),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/sign_up',
                  (route) => false,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _EmailTextField extends StatelessWidget {
  const _EmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (_, current) => current is LoginFieldsInfo,
      builder: (context, state) {
        final fieldsInfo = state as LoginFieldsInfo;
        final error = fieldsInfo.emailError;
        return CustomTextField(
          prefixIcon: Icons.mail_outline_outlined,
          labelText: 'Enter your email address',
          onChanged: (text) => context.read<LoginBloc>().add(LoginEmailChanged(text)),
          keyboardType: TextInputType.emailAddress,
          textColor: error == null ? AppColors.dark100 : AppColors.error100,
          prefixIconColor: error == null ? AppColors.grey60 : AppColors.error100,
        );
      },
    );
  }
}

class _PasswordTextField extends StatelessWidget {
  const _PasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (_, current) => current is LoginFieldsInfo,
      builder: (context, state) {
        final fieldsInfo = state as LoginFieldsInfo;
        final error = fieldsInfo.passwordError;
        return CustomTextField(
          prefixIcon: Icons.lock_outline,
          labelText: 'Confirm your password',
          obscureText: true,
          onChanged: (text) => context.read<LoginBloc>().add(LoginPasswordChanged(text)),
          keyboardType: TextInputType.visiblePassword,
          textColor: error == null ? AppColors.dark100 : AppColors.error100,
          prefixIconColor: error == null ? AppColors.grey60 : AppColors.error100,
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<LoginBloc, LoginState, bool>(
      selector: (state) => state is LoginInProgress,
      builder: (context, inProgress) {
        return CustomRoundedButton(
          textButton: 'Login',
          onPressed: () {
            return inProgress ? null : context.read<LoginBloc>().add(const LoginAuthAccount());
          },
          textColor: AppColors.white100,
          buttonColor: AppColors.primary100,
          // textColor: inProgress ? AppColors.white100 : AppColors.grey100,
          // buttonColor: inProgress ? AppColors.primary100 : AppColors.dark10,
        );
      },
    );
  }
}
