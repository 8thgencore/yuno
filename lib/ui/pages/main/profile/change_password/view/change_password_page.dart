import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:yuno/app/helpers/remove_scrolling_glow.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/main/profile/change_password/bloc/change_password_bloc.dart';
import 'package:yuno/ui/widgets/custom_rounded_button.dart';
import 'package:yuno/ui/widgets/custom_text_field.dart';
import 'package:yuno/ui/widgets/toast_widget.dart';
import 'package:yuno/utils/toast.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  Widget build(BuildContext context) {
    return BlocConsumer<ChangePasswordBloc, ChangePasswordState>(
      listener: (context, state) {
        switch (state.status) {
          case ChangePasswordStatus.initial:
            break;
          case ChangePasswordStatus.loading:
            context.loaderOverlay.show();
            break;
          case ChangePasswordStatus.loaded:
            context.loaderOverlay.hide();
            break;
          case ChangePasswordStatus.success:
            context.loaderOverlay.hide();
            showToast(
              context,
              child: const ToastWidget(
                text: 'Password has been successfully updated',
                type: ToastType.success,
              ),
            );
            break;
          case ChangePasswordStatus.failure:
            context.loaderOverlay.hide();
            showToast(
              context,
              child: ToastWidget(
                text: state.serverError ?? 'Server Error',
                type: ToastType.failure,
              ),
            );
            break;
        }
      },
      builder: (context, state) {
        return LoaderOverlay(
          child: Scaffold(
            backgroundColor: AppColors.screen100,
            body: const SafeArea(child: _ChangePasswordContentWidget()),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: CustomRoundedButton(
                textButton: 'Change Password',
                onPressed: state.isValid
                    ? () {
                        final currentNode = FocusScope.of(context);
                        if (currentNode.focusedChild != null && !currentNode.hasPrimaryFocus) {
                          FocusManager.instance.primaryFocus?.unfocus();
                        }
                        context.read<ChangePasswordBloc>().add(const ChangePasswordEvent.saved());
                      }
                    : null,
              ),
            ),
          ),
        );
      },
    );
  }
}

class _ChangePasswordContentWidget extends StatelessWidget {
  const _ChangePasswordContentWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 18, left: 24, right: 24, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.maybePop(context, true),
                child: Assets.svg.backArrow.svg(),
              ),
              const SizedBox(height: 12),
              Text(
                'Change Password',
                style: AppTypography.b18d,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            decoration: const BoxDecoration(
              color: AppColors.white60,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
            ),
            child: removeScrollingGlow(
              child: const SingleChildScrollView(
                child: _ListTextFieldWidget(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ListTextFieldWidget extends StatelessWidget {
  const _ListTextFieldWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 14),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 14),
          child: _CurrentPasswordTextField(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 14),
          child: _NewPasswordTextField(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 14),
          child: _ConfirmNewPasswordTextField(),
        ),
        SizedBox(height: 22),
        _ListRoundCheckWidget(),
        SizedBox(height: 90),
      ],
    );
  }
}

class _ListRoundCheckWidget extends StatelessWidget {
  const _ListRoundCheckWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [
                Assets.svg.roundCheck.svg(
                  height: 26,
                  color: state.isNewPasswordMoreLength ? AppColors.primary100 : AppColors.grey40,
                ),
                const SizedBox(width: 8),
                Text(
                  'Must be 6 characters or longer',
                  style: AppTypography.l14d,
                )
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Assets.svg.roundCheck.svg(
                  height: 26,
                  color: state.isPasswordHaveNumber ? AppColors.primary100 : AppColors.grey40,
                ),
                const SizedBox(width: 8),
                Text(
                  'Must contains at least 1 number',
                  style: AppTypography.l14d,
                )
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Assets.svg.roundCheck.svg(
                  height: 26,
                  color: state.isPasswordConfirm ? AppColors.primary100 : AppColors.grey40,
                ),
                const SizedBox(width: 8),
                Text(
                  'The password must match',
                  style: AppTypography.l14d,
                )
              ],
            ),
          ],
        );
      },
    );
  }
}

class _CurrentPasswordTextField extends StatefulWidget {
  const _CurrentPasswordTextField();

  @override
  State<_CurrentPasswordTextField> createState() => _CurrentPasswordTextFieldState();
}

class _CurrentPasswordTextFieldState extends State<_CurrentPasswordTextField> {
  late TextEditingController controller;
  bool _isObscure = true;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: controller,
      labelText: 'Current Password',
      keyboardType: TextInputType.text,
      textColor: AppColors.dark100,
      obscureText: _isObscure,
      prefixIcon: IconButton(
        icon: Assets.svg.lock.svg(
          height: 26,
          color: controller.text.isEmpty ? AppColors.grey40 : AppColors.primary100,
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
      onChanged: (text) {
        context.read<ChangePasswordBloc>().add(ChangePasswordEvent.currentPasswordChanged(text));
        setState(() {});
      },
    );
  }
}

class _NewPasswordTextField extends StatefulWidget {
  const _NewPasswordTextField();

  @override
  State<_NewPasswordTextField> createState() => _NewPasswordTextFieldState();
}

class _NewPasswordTextFieldState extends State<_NewPasswordTextField> {
  late TextEditingController controller;
  bool _isObscure = true;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: controller,
      labelText: 'New Password',
      keyboardType: TextInputType.text,
      textColor: AppColors.dark100,
      obscureText: _isObscure,
      prefixIcon: IconButton(
        icon: Assets.svg.lock.svg(
          height: 26,
          color: controller.text.isEmpty ? AppColors.grey40 : AppColors.primary100,
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
      onChanged: (text) {
        context.read<ChangePasswordBloc>().add(ChangePasswordEvent.newPasswordChanged(text));
        setState(() {});
      },
    );
  }
}

class _ConfirmNewPasswordTextField extends StatefulWidget {
  const _ConfirmNewPasswordTextField();

  @override
  State<_ConfirmNewPasswordTextField> createState() => _ConfirmNewPasswordTextFieldState();
}

class _ConfirmNewPasswordTextFieldState extends State<_ConfirmNewPasswordTextField> {
  late TextEditingController controller;
  bool _isObscure = true;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: controller,
      labelText: 'Confirm New Password',
      keyboardType: TextInputType.text,
      textColor: AppColors.dark100,
      obscureText: _isObscure,
      prefixIcon: IconButton(
        icon: Assets.svg.lock.svg(
          height: 26,
          color: controller.text.isEmpty ? AppColors.grey40 : AppColors.primary100,
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
      onChanged: (text) {
        context.read<ChangePasswordBloc>().add(ChangePasswordEvent.confirmNewPasswordChanged(text));
        setState(() {});
      },
    );
  }
}
