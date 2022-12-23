import 'package:flutter/material.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/auth/widgets/custom_rounded_button.dart';
import 'package:yuno/ui/auth/widgets/custom_text_field.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screen100,
      body: const SafeArea(child: _ProfileEditContentWidget()),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: CustomRoundedButton(
          textButton: 'Save Changes',
          onPressed: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          textColor: AppColors.white100,
          buttonColor: AppColors.primary100,
        ),
      ),
    );
  }
}

class _ProfileEditContentWidget extends StatelessWidget {
  const _ProfileEditContentWidget();

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
                onTap: () => Navigator.maybePop(context),
                child: Assets.svg.backArrow.svg(),
              ),
              const SizedBox(height: 12),
              Text(
                'Edit Profile',
                style: AppTypography.b18d,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(top: 4, left: 24, right: 24),
            decoration: const BoxDecoration(
              color: AppColors.white60,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: _FirstNameTextField(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: _LastNameTextField(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: _UsernameTextField(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: _EmailTextField(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: _RoleTextField(),
                  ),
                  SizedBox(height: 90),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _FirstNameTextField extends StatelessWidget {
  const _FirstNameTextField();

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(
      labelText: 'First Name',
      // onChanged: (text) => context.read<LoginBloc>().add(LoginEmailChanged(text)),
      keyboardType: TextInputType.emailAddress,
      textColor: AppColors.dark100,
      prefixIconColor: AppColors.grey60,
    );
  }
}

class _LastNameTextField extends StatelessWidget {
  const _LastNameTextField();

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(
      labelText: 'Last Name',
      // onChanged: (text) => context.read<LoginBloc>().add(LoginEmailChanged(text)),
      keyboardType: TextInputType.emailAddress,
      textColor: AppColors.dark100,
      prefixIconColor: AppColors.grey60,
    );
  }
}

class _UsernameTextField extends StatelessWidget {
  const _UsernameTextField();

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(
      labelText: 'Nickname',
      // onChanged: (text) => context.read<LoginBloc>().add(LoginEmailChanged(text)),
      keyboardType: TextInputType.emailAddress,
      textColor: AppColors.dark100,
      prefixIconColor: AppColors.grey60,
    );
  }
}

class _EmailTextField extends StatelessWidget {
  const _EmailTextField();

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(
      labelText: 'Email',
      // onChanged: (text) => context.read<LoginBloc>().add(LoginEmailChanged(text)),
      keyboardType: TextInputType.emailAddress,
      textColor: AppColors.dark100,
      prefixIconColor: AppColors.grey60,
    );
  }
}

class _RoleTextField extends StatelessWidget {
  const _RoleTextField();

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(
      labelText: 'Role',
      // onChanged: (text) => context.read<LoginBloc>().add(LoginEmailChanged(text)),
      keyboardType: TextInputType.emailAddress,
      textColor: AppColors.dark100,
      prefixIconColor: AppColors.grey60,
    );
  }
}
