import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/data/repository/user_repository.dart';
import 'package:yuno/domain/repository/api_user_repository.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/auth/widgets/custom_rounded_button.dart';
import 'package:yuno/ui/auth/widgets/custom_text_field.dart';
import 'package:yuno/ui/home/edit_profile/bloc/profile_edit_bloc.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileEditBloc(
        apiUserRepository: sl.get<ApiUserRepository>(),
        userRepository: sl.get<UserRepository>(),
      )..add(const ProfileEditEvent.started()),
      child: Scaffold(
        backgroundColor: AppColors.screen100,
        body: const SafeArea(child: _ProfileEditContentWidget()),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: CustomRoundedButton(
            textButton: 'Save Changes',
            onPressed: () {
              FocusManager.instance.primaryFocus?.unfocus();
              context.read<ProfileEditBloc>().add(const ProfileEditEvent.saved());
            },
            textColor: AppColors.white100,
            buttonColor: AppColors.primary100,
          ),
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
    return BlocBuilder<ProfileEditBloc, ProfileEditState>(
      builder: (context, state) => state.maybeWhen(
        loading: () => Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 100),
          child: const CircularProgressIndicator(),
        ),
        loaded: (user) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: _FirstNameTextField(text: user.firstName),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: _LastNameTextField(text: user.lastName),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: _UsernameTextField(text: user.username),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: _EmailTextField(text: user.email),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: _RoleTextField(text: user.role?.name ?? ''),
            ),
            const SizedBox(height: 90),
          ],
        ),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}

class _FirstNameTextField extends StatelessWidget {
  const _FirstNameTextField({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: TextEditingController(text: text),
      labelText: 'First Name',
      keyboardType: TextInputType.emailAddress,
      textColor: AppColors.dark100,

    );
  }
}

class _LastNameTextField extends StatelessWidget {
  const _LastNameTextField({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: TextEditingController(text: text),
      labelText: 'Last Name',
      keyboardType: TextInputType.emailAddress,
      textColor: AppColors.dark100,
      onChanged: (text) =>
          context.read<ProfileEditBloc>().add(ProfileEditEvent.lastNameChanged(text)),
    );
  }
}

class _UsernameTextField extends StatelessWidget {
  const _UsernameTextField({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: TextEditingController(text: text),
      labelText: 'Nickname',
      keyboardType: TextInputType.emailAddress,
      textColor: AppColors.dark100,
      onChanged: (text) =>
          context.read<ProfileEditBloc>().add(ProfileEditEvent.nicknameChanged(text)),
    );
  }
}

class _EmailTextField extends StatelessWidget {
  const _EmailTextField({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: TextEditingController(text: text),
      labelText: 'Email',
      keyboardType: TextInputType.emailAddress,
      textColor: AppColors.dark100,
      onChanged: (text) =>
          context.read<ProfileEditBloc>().add(ProfileEditEvent.emailChanged(text)),
    );
  }
}

class _RoleTextField extends StatelessWidget {
  const _RoleTextField({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: TextEditingController(text: text),
      enabled: false,
      labelText: 'Role',
      keyboardType: TextInputType.emailAddress,
      textColor: AppColors.dark100,
    );
  }
}
