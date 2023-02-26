import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/domain/repository/api_auth_repository.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/auth/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:yuno/ui/pages/auth/reset_password/bloc/reset_password_bloc.dart';
import 'package:yuno/ui/widgets/buttons/custom_rounded_button.dart';
import 'package:yuno/ui/widgets/custom_text_field.dart';
import 'package:yuno/ui/widgets/toast_widget.dart';
import 'package:yuno/utils/toast.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResetPasswordBloc(sl.get<IAuthRepository>()),
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
            child: _ResetPasswordPageWidget(),
          ),
        ),
      ),
    );
  }
}

class _ResetPasswordPageWidget extends StatelessWidget {
  const _ResetPasswordPageWidget();

  static const double _credWidgetH = 286;
  static const double _errorWidgetH = 86;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordBloc, ResetPasswordState>(
      listener: (context, state) async {
        switch (state.status) {
          case ResetPasswordStatus.initial:
            break;
          case ResetPasswordStatus.loading:
            break;
          case ResetPasswordStatus.failure:
            break;
          case ResetPasswordStatus.success:
            showToast(
              context,
              child: const ToastWidget(
                text: 'Password has been successfully replaced',
                type: ToastType.success,
              ),
            );
            context.goNamed(RouteName.login);
            break;
        }
      },
      child: Stack(
        children: [
          BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
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
          BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
            builder: (context, state) {
              final error = state.serverError;
              return error != null
                  ? Align(
                      alignment: Alignment.bottomCenter,
                      child: _ErrorWidget(
                        height: _errorWidgetH,
                        paddingBottom: _credWidgetH,
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

class _TopInfoWidget extends StatelessWidget {
  const _TopInfoWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            'Create New Password!',
            style: AppTypography.b24l,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            'Finally, you’ve come to the last step. '
            'Now, create your new password and don’t forget to remember it!',
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
    required this.error,
  });

  final double height;
  final double paddingBottom;
  final String error;

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
        ),
        Positioned(
          top: 16 - 10,
          right: 24 - 10,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () =>
                context.read<ResetPasswordBloc>().add(const ResetPasswordEvent.closedError()),
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
  late final FocusNode _passwordFocusNode;
  late final FocusNode _passwordConfirmFocusNode;

  @override
  void initState() {
    super.initState();
    _passwordFocusNode = FocusNode();
    _passwordConfirmFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _passwordFocusNode.dispose();
    _passwordConfirmFocusNode.dispose();
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
          _PasswordTextField(
            passwordFocusNode: _passwordFocusNode,
            passwordConfirmFocusNode: _passwordConfirmFocusNode,
          ),
          const SizedBox(height: 24),
          _PasswordConfirmTextField(passwordConfirmFocusNode: _passwordConfirmFocusNode),
          const SizedBox(height: 40),
          const _ConfirmButton(),
        ],
      ),
    );
  }
}

class _PasswordTextField extends StatefulWidget {
  const _PasswordTextField({
    required FocusNode passwordFocusNode,
    required FocusNode passwordConfirmFocusNode,
  })  : _passwordFocusNode = passwordFocusNode,
        _passwordConfirmFocusNode = passwordConfirmFocusNode;

  final FocusNode _passwordFocusNode;
  final FocusNode _passwordConfirmFocusNode;

  @override
  State<_PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<_PasswordTextField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
      builder: (context, state) {
        final error = state.passwordError;
        return CustomTextField(
          focusNode: widget._passwordFocusNode,
          labelText: 'Create new password',
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
          onChanged: (text) =>
              context.read<ResetPasswordBloc>().add(ResetPasswordEvent.passwordChanged(text)),
          suffixIcon: IconButton(
            icon: Icon(
              _isObscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,
              color: AppColors.grey40,
            ),
            onPressed: () {
              setState(() => _isObscure = !_isObscure);
            },
          ),
          onSubmitted: (_) => widget._passwordConfirmFocusNode.requestFocus(),
        );
      },
    );
  }
}

class _PasswordConfirmTextField extends StatefulWidget {
  const _PasswordConfirmTextField({
    required FocusNode passwordConfirmFocusNode,
  }) : _passwordConfirmFocusNode = passwordConfirmFocusNode;

  final FocusNode _passwordConfirmFocusNode;

  @override
  State<_PasswordConfirmTextField> createState() => _PasswordConfirmTextFieldState();
}

class _PasswordConfirmTextFieldState extends State<_PasswordConfirmTextField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
      builder: (context, state) {
        final error = state.passwordConfirmError;
        return CustomTextField(
          focusNode: widget._passwordConfirmFocusNode,
          labelText: 'Confirm new password',
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
          onChanged: (text) => context
              .read<ResetPasswordBloc>()
              .add(ResetPasswordEvent.passwordConfirmChanged(text)),
          suffixIcon: IconButton(
            icon: Icon(
              _isObscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,
              color: AppColors.grey40,
            ),
            onPressed: () {
              setState(() => _isObscure = !_isObscure);
            },
          ),
          onSubmitted: (_) {
            if (state.isValid) {
              FocusManager.instance.primaryFocus?.unfocus();
              context.read<ResetPasswordBloc>().add(const ResetPasswordEvent.continued());
            }
          },
        );
      },
    );
  }
}

class _ConfirmButton extends StatelessWidget {
  const _ConfirmButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
      builder: (context, state) {
        return CustomRoundedButton(
          textButton: 'Confirm',
          onPressed: state.isValid
              ? () {
                  final currentNode = FocusScope.of(context);
                  if (currentNode.focusedChild != null && !currentNode.hasPrimaryFocus) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  }
                  context.read<ResetPasswordBloc>().add(const ResetPasswordEvent.continued());
                }
              : null,
        );
      },
    );
  }
}
