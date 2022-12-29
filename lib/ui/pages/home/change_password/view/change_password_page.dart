import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/home/change_password/bloc/change_password_bloc.dart';
import 'package:yuno/ui/widgets/custom_rounded_button.dart';
import 'package:yuno/ui/widgets/custom_text_field.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  Widget build(BuildContext context) {
    return LoaderOverlay(
      child: Scaffold(
        backgroundColor: AppColors.screen100,
        body: const SafeArea(child: _ChangePasswordContentWidget()),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: CustomRoundedButton(
            textButton: 'Change Password',
            onPressed: () {
              final currentNode = FocusScope.of(context);
              if (currentNode.focusedChild != null && !currentNode.hasPrimaryFocus) {
                FocusManager.instance.primaryFocus?.unfocus();
              }
              context.read<ChangePasswordBloc>().add(const ChangePasswordEvent.saved());
            },
            textColor: AppColors.white100,
            buttonColor: AppColors.primary100,
          ),
        ),
      ),
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
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: const SingleChildScrollView(
              child: _ListTextFieldWidget(),
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
        SizedBox(height: 90),
      ],
    );
  }
}

class _CurrentPasswordTextField extends StatelessWidget {
  const _CurrentPasswordTextField();

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      labelText: 'Current Password',
      keyboardType: TextInputType.text,
      textColor: AppColors.dark100,
      obscureText: true,
      // prefixIcon: IconButton(
      //   icon: Assets.svg.lock.svg(
      //     height: 26,
      //     color: error == null ? AppColors.grey60 : AppColors.error100,
      //   ),
      //   onPressed: () {},
      // ),
      onChanged: (text) => context.read<ChangePasswordBloc>().add(
            ChangePasswordEvent.currentPasswordChanged(text),
          ),
    );
  }
}

class _NewPasswordTextField extends StatelessWidget {
  const _NewPasswordTextField();

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      labelText: 'New Password',
      keyboardType: TextInputType.text,
      textColor: AppColors.dark100,
      obscureText: true,
      onChanged: (text) => context.read<ChangePasswordBloc>().add(
            ChangePasswordEvent.newPasswordChanged(text),
          ),
    );
  }
}

class _ConfirmNewPasswordTextField extends StatelessWidget {
  const _ConfirmNewPasswordTextField();

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      labelText: 'Confirm New Password',
      keyboardType: TextInputType.text,
      textColor: AppColors.dark100,
      obscureText: true,
      onChanged: (text) => context.read<ChangePasswordBloc>().add(
            ChangePasswordEvent.confirmNewPasswordChanged(text),
          ),
    );
  }
}
