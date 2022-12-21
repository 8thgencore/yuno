import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/domain/repository/auth_repository.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/routes/routes.dart';
import 'package:yuno/ui/auth/registration/bloc/registration_bloc.dart';
import 'package:yuno/ui/auth/widgets/custom_rounded_button.dart';
import 'package:yuno/ui/auth/widgets/custom_text_field.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegistrationBloc(sl.get<AuthRepository>()),
      child: Scaffold(
        appBar: AppBar(toolbarHeight: 0, elevation: 0),
        backgroundColor: AppColors.primary100,
        body: const SafeArea(
          child: _RegistrationPageWidget(),
        ),
      ),
    );
  }
}

class _RegistrationPageWidget extends StatelessWidget {
  const _RegistrationPageWidget({super.key});

  static const double _credWidgetH = 448;
  static const double errorWidgetH = 86;

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegistrationBloc, RegistrationState>(
      listener: (context, state) {
        if (state is RegistrationCompleted) {
          Navigator.pushNamedAndRemoveUntil(context, RoutesPage.login, (route) => false);
        }
      },
      child: Stack(
        children: [
          BlocBuilder<RegistrationBloc, RegistrationState>(
            buildWhen: (_, current) => current is RegistrationFieldsInfo,
            builder: (context, state) {
              final fieldsInfo = state as RegistrationFieldsInfo;
              final error = fieldsInfo.serverError;
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  const _TopInfoWidget(),
                  SizedBox(
                    height: error != null ? (_credWidgetH + errorWidgetH) : _credWidgetH,
                  ),
                ],
              );
            },
          ),
          SizedBox(
            width: double.infinity,
            child: Image.asset(Assets.images.signOrnament.path, fit: BoxFit.cover),
          ),
          BlocBuilder<RegistrationBloc, RegistrationState>(
            buildWhen: (_, current) => current is RegistrationFieldsInfo,
            builder: (context, state) {
              final fieldsInfo = state as RegistrationFieldsInfo;
              final error = fieldsInfo.serverError;
              return error != null
                  ? Align(
                      alignment: Alignment.bottomCenter,
                      child: _ErrorWidget(
                        height: _credWidgetH + errorWidgetH,
                        error: error,
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
            children: [
              Text(
                'Error from server',
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
            onTap: () => context.read<RegistrationBloc>().add(const RegistrationCloseError()),
            child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Icon(Icons.close, color: AppColors.white80, size: 20)),
          ),
        ),
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
          Text('Hey, Welcome!', style: AppTypography.b24l),
          const SizedBox(height: 12),
          Center(
            child: Text(
              'Welcome to Yuno! Enter all the details\n'
              'below to continue enjoying all Yuno\n'
              'amazing features.',
              style: AppTypography.l14l.copyWith(height: 2),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
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
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const _EmailTextField(),
          const SizedBox(height: 20),
          const _NicknameTextField(),
          const SizedBox(height: 20),
          const _PasswordTextField(),
          const SizedBox(height: 20),
          const _PasswordTextConfirmField(),
          const SizedBox(height: 30),
          const _RegistrationButton(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
                style: AppTypography.l14d,
              ),
              TextButton(
                child: const Text(
                  'Login',
                  style: TextStyle(color: AppColors.primary100),
                ),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  RoutesPage.login,
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
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (_, current) => current is RegistrationFieldsInfo,
      builder: (context, state) {
        final fieldsInfo = state as RegistrationFieldsInfo;
        final error = fieldsInfo.emailError;
        return CustomTextField(
          prefixIcon: Icons.mail_outline_outlined,
          labelText: 'Enter your email address',
          onChanged: (text) => context.read<RegistrationBloc>().add(RegistrationEmailChanged(text)),
          keyboardType: TextInputType.emailAddress,
          textColor: error == null ? AppColors.dark100 : AppColors.error100,
          prefixIconColor: error == null ? AppColors.grey60 : AppColors.error100,
        );
      },
    );
  }
}

class _NicknameTextField extends StatelessWidget {
  const _NicknameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (_, current) => current is RegistrationFieldsInfo,
      builder: (context, state) {
        final fieldsInfo = state as RegistrationFieldsInfo;
        final error = fieldsInfo.nameError;
        return CustomTextField(
          prefixIcon: Icons.person_outline_outlined,
          labelText: 'Create your username',
          onChanged: (text) => context.read<RegistrationBloc>().add(RegistrationNameChanged(text)),
          keyboardType: TextInputType.name,
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
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (_, current) => current is RegistrationFieldsInfo,
      builder: (context, state) {
        final fieldsInfo = state as RegistrationFieldsInfo;
        final error = fieldsInfo.passwordError;
        return CustomTextField(
          prefixIcon: Icons.lock_outline,
          labelText: 'Confirm your password',
          obscureText: true,
          onChanged: (text) =>
              context.read<RegistrationBloc>().add(RegistrationPasswordChanged(text)),
          keyboardType: TextInputType.visiblePassword,
          textColor: error == null ? AppColors.dark100 : AppColors.error100,
          prefixIconColor: error == null ? AppColors.grey60 : AppColors.error100,
        );
      },
    );
  }
}

class _PasswordTextConfirmField extends StatelessWidget {
  const _PasswordTextConfirmField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (_, current) => current is RegistrationFieldsInfo,
      builder: (context, state) {
        final fieldsInfo = state as RegistrationFieldsInfo;
        final error = fieldsInfo.passwordConfirmError;
        return CustomTextField(
          prefixIcon: Icons.lock_outline,
          labelText: 'Create your password',
          obscureText: true,
          onChanged: (text) =>
              context.read<RegistrationBloc>().add(RegistrationPasswordConfirmationChanged(text)),
          keyboardType: TextInputType.visiblePassword,
          textColor: error == null ? AppColors.dark100 : AppColors.error100,
          prefixIconColor: error == null ? AppColors.grey60 : AppColors.error100,
        );
      },
    );
  }
}

class _RegistrationButton extends StatelessWidget {
  const _RegistrationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<RegistrationBloc, RegistrationState, bool>(
      selector: (state) => state is RegistrationInProgress,
      builder: (context, inProgress) {
        return CustomRoundedButton(
          textButton: 'Sign Me Up!',
          onPressed: () {
            FocusManager.instance.primaryFocus?.unfocus();
            return inProgress
                ? null
                : context.read<RegistrationBloc>().add(const RegistrationCreateAccount());
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
