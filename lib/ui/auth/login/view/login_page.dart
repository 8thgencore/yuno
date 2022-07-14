import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/auth/login/bloc/login_bloc.dart';
import 'package:yuno/ui/auth/login/model/models.dart';
import 'package:yuno/ui/auth/login/model/request_error.dart';
import 'package:yuno/ui/auth/widgets/custom_rounded_button.dart';
import 'package:yuno/ui/auth/widgets/custom_text_field.dart';
import 'package:yuno/ui/home/view/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Scaffold(
        appBar: AppBar(toolbarHeight: 0, elevation: 0),
        backgroundColor: AppColors.white100,
        body: const SafeArea(
          child: _LoginPageWidget(),
        ),
      ),
    );
  }
}

class _LoginPageWidget extends StatefulWidget {
  const _LoginPageWidget({super.key});

  @override
  State<_LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<_LoginPageWidget> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state.authenticated) {
              Navigator.of(context).push<void>(
                MaterialPageRoute(builder: (_) => const HomePage()),
              );
            }
          },
        ),
        BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state.requestError != RequestError.noError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text(
                    'Произошла ошибка',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.red[900],
                ),
              );
              context.read<LoginBloc>().add(const LoginRequestErrorShowed());
            }
          },
        ),
      ],
      child: Stack(
        children: [
          const _TopInfoWidget(),
          Image.asset(Assets.images.signOrnament.path, fit: BoxFit.cover),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 116,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                    color: AppColors.dark100,
                  ),
                  child: const _FingerprintWidget(),
                ),
                ColoredBox(
                  color: AppColors.dark100,
                  child: Container(
                    padding:
                        const EdgeInsets.only(top: 20, left: 24, right: 24),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30),
                      ),
                      color: AppColors.screen100,
                    ),
                    child: const _BottomWidget(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TopInfoWidget extends StatelessWidget {
  const _TopInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.primary100,
      child: Column(
        children: [
          const SizedBox(height: 90),
          Text('Welcome Back!', style: AppTypography.b24l),
          const SizedBox(height: 12),
          Center(
            child: Text(
              'Login to your account by entering your email\n'
              'and password below, we are really happy\n'
              'to see you come back!',
              style: AppTypography.r14l.copyWith(height: 2),
              textAlign: TextAlign.center,
            ),
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
        const SizedBox(width: 0),
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
            primary: AppColors.white100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: const Text(
            'Set Up',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: AppColors.primary100,
            ),
          ),
        ),
        const SizedBox(width: 0),
      ],
    );
  }
}

class _BottomWidget extends StatelessWidget {
  const _BottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _EmailTextField(),
        const SizedBox(height: 20),
        _PasswordTextField(),
        TextButton(
          child: Align(
            alignment: Alignment.topRight,
            child: Text(
              'Forgot Password?',
              style: AppTypography.r14d,
            ),
          ),
          onPressed: () => Navigator.pushNamedAndRemoveUntil(
            context,
            '/splash',
            (route) => false,
          ),
        ),
        _LoginButton(),
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
    );
  }
}

class _EmailTextField extends StatelessWidget {
  const _EmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<LoginBloc, LoginState, EmailError>(
      selector: (state) => state.emailError,
      builder: (context, emailError) {
        return CustomTextField(
          onTap: () {},
          prefixIcon: Icons.mail_outline_outlined,
          labelText: 'Enter your email address',
          obscureText: false,
          onChanged: (text) =>
              context.read<LoginBloc>().add(LoginEmailChanged(text)),
          keyboardType: TextInputType.emailAddress,
          textColor: emailError == EmailError.noError
              ? AppColors.dark100
              : AppColors.error100,
          prefixIconColor: emailError == EmailError.noError
              ? AppColors.grey60
              : AppColors.error100,
        );
      },
    );
  }
}

class _PasswordTextField extends StatelessWidget {
  const _PasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<LoginBloc, LoginState, PasswordError>(
      selector: (state) => state.passwordError,
      builder: (context, passwordError) {
        return CustomTextField(
          onTap: () {},
          prefixIcon: Icons.lock_outline,
          labelText: 'Confirm your password',
          obscureText: true,
          onChanged: (text) =>
              context.read<LoginBloc>().add(LoginPasswordChanged(text)),
          keyboardType: TextInputType.visiblePassword,
          textColor: passwordError == PasswordError.noError
              ? AppColors.dark100
              : AppColors.error100,
          prefixIconColor: passwordError == PasswordError.noError
              ? AppColors.grey60
              : AppColors.error100,
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
      selector: (state) => state.allFieldsValid,
      builder: (context, fieldsValid) {
        return CustomRoundedButton(
          textButton: 'Login',
          onPressed: () {
            return fieldsValid
                ? context.read<LoginBloc>().add(const LoginLoginButtonClicked())
                : null;
          },
          textColor: fieldsValid ? AppColors.white100 : AppColors.grey100,
          buttonColor: fieldsValid ? AppColors.primary100 : AppColors.dark10,
        );
      },
    );
  }
}
