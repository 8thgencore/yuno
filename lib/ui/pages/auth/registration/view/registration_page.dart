import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/domain/repository/api_auth_repository.dart';
import 'package:yuno/l10n/l10n.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/auth/registration/bloc/registration_bloc.dart';
import 'package:yuno/ui/widgets/buttons/custom_rounded_button.dart';
import 'package:yuno/ui/widgets/custom_text_field.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegistrationBloc(sl.get<IAuthRepository>()),
      child: const LoaderOverlay(
        child: Scaffold(
          body: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.7, 1.0],
                colors: [AppColors.primary100, AppColors.screen100],
              ),
            ),
            child: _RegistrationPageWidget(),
          ),
        ),
      ),
    );
  }
}

class _RegistrationPageWidget extends StatelessWidget {
  const _RegistrationPageWidget();

  static const double _credWidgetH = 444;
  static const double errorWidgetH = 86;

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegistrationBloc, RegistrationState>(
      listener: (context, state) {
        if (state is RegistrationCompleted) {
          context.loaderOverlay.hide();
          context.goNamed(RouteName.login);
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
    final l10n = context.l10n;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(l10n.regPageTitle, style: AppTypography.b24l),
          const SizedBox(height: 12),
          Center(
            child: Text(
              l10n.regPageDescription,
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

    SchedulerBinding.instance.addPostFrameCallback((_) => _addFocusLostHandlers());
  }

  // ignore: unused_element
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
    final l10n = context.l10n;
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
                l10n.regPageAlreadyHaveAccount,
                style: AppTypography.l14d,
              ),
              TextButton(
                child: Text(
                  l10n.login,
                  style: const TextStyle(color: AppColors.primary100),
                ),
                onPressed: () => context.goNamed(RouteName.login),
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
          labelText: context.l10n.regPageEmail,
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
          labelText: context.l10n.regPageUsername,
          keyboardType: TextInputType.name,
          textColor: error == null ? AppColors.dark100 : AppColors.error100,
          prefixIcon: IconButton(
            icon: Assets.svg.user.svg(
              height: 26,
              colorFilter: ColorFilter.mode(
                error == null ? AppColors.grey60 : AppColors.error100,
                BlendMode.srcIn,
              ),
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
          labelText: context.l10n.regPagePassword,
          obscureText: _isObscure,
          keyboardType: TextInputType.visiblePassword,
          textColor: error == null ? AppColors.dark100 : AppColors.error100,
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
          labelText: context.l10n.regPageConfirmPassword,
          obscureText: _isObscure,
          keyboardType: TextInputType.visiblePassword,
          textColor: error == null ? AppColors.dark100 : AppColors.error100,
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
          textButton: context.l10n.signUp,
          onPressed: () {
            final currentNode = FocusScope.of(context);
            if (currentNode.focusedChild != null && !currentNode.hasPrimaryFocus) {
              FocusManager.instance.primaryFocus?.unfocus();
            }
            return inProgress
                ? null
                : context.read<RegistrationBloc>().add(const RegistrationCreateAccount());
          },
          // textColor: inProgress ? AppColors.white100 : AppColors.grey100,
          // buttonColor: inProgress ? AppColors.primary100 : AppColors.dark10,
        );
      },
    );
  }
}
