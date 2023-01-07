import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/domain/repository/api_auth_repository.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/auth/registration/bloc/registration_bloc.dart';
import 'package:yuno/ui/widgets/custom_rounded_button.dart';
import 'package:yuno/ui/widgets/custom_text_field.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegistrationBloc(sl.get<ApiAuthRepository>()),
      child: LoaderOverlay(
        child: Scaffold(
          appBar: AppBar(toolbarHeight: 0, elevation: 0),
          backgroundColor: AppColors.primary100,
          body: const SafeArea(
            child: _RegistrationPageWidget(),
          ),
        ),
      ),
    );
  }
}

class _RegistrationPageWidget extends StatelessWidget {
  const _RegistrationPageWidget();

  static const double _credWidgetH = 434;
  static const double errorWidgetH = 86;

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegistrationBloc, RegistrationState>(
      listener: (context, state) {
        if (state is RegistrationCompleted) {
          context.loaderOverlay.hide();
          Navigator.pushNamedAndRemoveUntil(context, RoutesPage.login, (route) => false);
        } else if (state is RegistrationInProgress) {
          context.loaderOverlay.show();
        } else if (state is RegistrationFieldsInfo) {
          context.loaderOverlay.hide();
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
              child: Icon(Icons.close, color: AppColors.white80, size: 20),
            ),
          ),
        ),
      ],
    );
  }
}

class _TopInfoWidget extends StatelessWidget {
  const _TopInfoWidget();

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

class _BottomWidget extends StatefulWidget {
  const _BottomWidget();

  @override
  State<_BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<_BottomWidget> {
  late final FocusNode _emailFocusNode;
  late final FocusNode _usernameFocusNode;
  late final FocusNode _passwordFocusNode;
  late final FocusNode _passwordConfirmationFocusNode;

  @override
  void initState() {
    super.initState();
    _emailFocusNode = FocusNode();
    _usernameFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    _passwordConfirmationFocusNode = FocusNode();

    // TODO(8thgencore): called BLoC event, how solve?
    // SchedulerBinding.instance.addPostFrameCallback((_) => _addFocusLostHandlers());
  }

  void _addFocusLostHandlers() {
    _emailFocusNode.addListener(() {
      if (!_emailFocusNode.hasFocus) {
        context.read<RegistrationBloc>().add(const RegistrationEmailFocusLost());
      }
    });
    _passwordFocusNode.addListener(() {
      if (!_passwordFocusNode.hasFocus) {
        context.read<RegistrationBloc>().add(const RegistrationPasswordFocusLost());
      }
    });
    _passwordConfirmationFocusNode.addListener(() {
      if (!_passwordConfirmationFocusNode.hasFocus) {
        context.read<RegistrationBloc>().add(const RegistrationPasswordConfirmationFocusLost());
      }
    });
    _usernameFocusNode.addListener(() {
      if (!_usernameFocusNode.hasFocus) {
        context.read<RegistrationBloc>().add(const RegistrationNameFocusLost());
      }
    });
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _usernameFocusNode.dispose();
    _passwordFocusNode.dispose();
    _passwordConfirmationFocusNode.dispose();
    super.dispose();
  }

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
          _EmailTextField(
            emailFocusNode: _emailFocusNode,
            usernameFocusNode: _usernameFocusNode,
          ),
          const SizedBox(height: 20),
          _NicknameTextField(
            usernameFocusNode: _usernameFocusNode,
            passwordFocusNode: _passwordFocusNode,
          ),
          const SizedBox(height: 20),
          _PasswordTextField(
            passwordFocusNode: _passwordFocusNode,
            passwordConfirmationFocusNode: _passwordConfirmationFocusNode,
          ),
          const SizedBox(height: 20),
          _PasswordTextConfirmField(passwordConfirmationFocusNode: _passwordConfirmationFocusNode),
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
  const _EmailTextField({
    required FocusNode emailFocusNode,
    required FocusNode usernameFocusNode,
  })  : _emailFocusNode = emailFocusNode,
        _usernameFocusNode = usernameFocusNode;

  final FocusNode _emailFocusNode;
  final FocusNode _usernameFocusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (_, current) => current is RegistrationFieldsInfo,
      builder: (context, state) {
        final fieldsInfo = state as RegistrationFieldsInfo;
        final error = fieldsInfo.emailError;
        return CustomTextField(
          focusNode: _emailFocusNode,
          labelText: 'Enter your email address',
          keyboardType: TextInputType.emailAddress,
          textColor: error == null ? AppColors.dark100 : AppColors.error100,
          prefixIcon: IconButton(
            icon: Assets.svg.email.svg(
              height: 26,
              color: error == null ? AppColors.grey60 : AppColors.error100,
            ),
            onPressed: () {},
          ),
          onChanged: (text) => context.read<RegistrationBloc>().add(RegistrationEmailChanged(text)),
          onSubmitted: (_) => _usernameFocusNode.requestFocus(),
        );
      },
    );
  }
}

class _NicknameTextField extends StatelessWidget {
  const _NicknameTextField({
    required FocusNode usernameFocusNode,
    required FocusNode passwordFocusNode,
  })  : _usernameFocusNode = usernameFocusNode,
        _passwordFocusNode = passwordFocusNode;

  final FocusNode _usernameFocusNode;
  final FocusNode _passwordFocusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (_, current) => current is RegistrationFieldsInfo,
      builder: (context, state) {
        final fieldsInfo = state as RegistrationFieldsInfo;
        final error = fieldsInfo.nameError;
        return CustomTextField(
          focusNode: _usernameFocusNode,
          labelText: 'Create your username',
          keyboardType: TextInputType.name,
          textColor: error == null ? AppColors.dark100 : AppColors.error100,
          prefixIcon: IconButton(
            icon: Assets.svg.user.svg(
              height: 26,
              color: error == null ? AppColors.grey60 : AppColors.error100,
            ),
            onPressed: () {},
          ),
          onChanged: (text) => context.read<RegistrationBloc>().add(RegistrationNameChanged(text)),
          onSubmitted: (_) => _passwordFocusNode.requestFocus(),
        );
      },
    );
  }
}

class _PasswordTextField extends StatefulWidget {
  const _PasswordTextField({
    required FocusNode passwordFocusNode,
    required FocusNode passwordConfirmationFocusNode,
  })  : _passwordFocusNode = passwordFocusNode,
        _passwordConfirmationFocusNode = passwordConfirmationFocusNode;

  final FocusNode _passwordFocusNode;
  final FocusNode _passwordConfirmationFocusNode;

  @override
  State<_PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<_PasswordTextField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (_, current) => current is RegistrationFieldsInfo,
      builder: (context, state) {
        final fieldsInfo = state as RegistrationFieldsInfo;
        final error = fieldsInfo.passwordError;
        return CustomTextField(
          focusNode: widget._passwordFocusNode,
          labelText: 'Confirm your password',
          obscureText: _isObscure,
          keyboardType: TextInputType.visiblePassword,
          textColor: error == null ? AppColors.dark100 : AppColors.error100,
          prefixIcon: IconButton(
            icon: Assets.svg.lock.svg(
              height: 26,
              color: error == null ? AppColors.grey60 : AppColors.error100,
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
          onChanged: (text) =>
              context.read<RegistrationBloc>().add(RegistrationPasswordChanged(text)),
          onSubmitted: (_) => widget._passwordConfirmationFocusNode.requestFocus(),
        );
      },
    );
  }
}

class _PasswordTextConfirmField extends StatefulWidget {
  const _PasswordTextConfirmField({
    required FocusNode passwordConfirmationFocusNode,
  }) : _passwordConfirmationFocusNode = passwordConfirmationFocusNode;

  final FocusNode _passwordConfirmationFocusNode;

  @override
  State<_PasswordTextConfirmField> createState() => _PasswordTextConfirmFieldState();
}

class _PasswordTextConfirmFieldState extends State<_PasswordTextConfirmField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      buildWhen: (_, current) => current is RegistrationFieldsInfo,
      builder: (context, state) {
        final fieldsInfo = state as RegistrationFieldsInfo;
        final error = fieldsInfo.passwordConfirmError;
        return CustomTextField(
          focusNode: widget._passwordConfirmationFocusNode,
          labelText: 'Create your password',
          obscureText: _isObscure,
          keyboardType: TextInputType.visiblePassword,
          textColor: error == null ? AppColors.dark100 : AppColors.error100,
          prefixIcon: IconButton(
            icon: Assets.svg.lock.svg(
              height: 26,
              color: error == null ? AppColors.grey60 : AppColors.error100,
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
          onChanged: (text) =>
              context.read<RegistrationBloc>().add(RegistrationPasswordConfirmationChanged(text)),
          onSubmitted: (_) {
            FocusManager.instance.primaryFocus?.unfocus();
            context.read<RegistrationBloc>().add(const RegistrationCreateAccount());
          },
        );
      },
    );
  }
}

class _RegistrationButton extends StatelessWidget {
  const _RegistrationButton();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<RegistrationBloc, RegistrationState, bool>(
      selector: (state) => state is RegistrationInProgress,
      builder: (context, inProgress) {
        return CustomRoundedButton(
          textButton: 'Sign Me Up!',
          onPressed: () {
            final currentNode = FocusScope.of(context);
            if (currentNode.focusedChild != null && !currentNode.hasPrimaryFocus) {
              FocusManager.instance.primaryFocus?.unfocus();
            }
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
