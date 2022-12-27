import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/home/edit_profile/bloc/profile_edit_bloc.dart';
import 'package:yuno/ui/widgets/custom_rounded_button.dart';
import 'package:yuno/ui/widgets/custom_text_field.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileEditBloc, ProfileEditState>(
      listener: (context, state) {
        if (state.status == ProfileEditStatus.success) {
          // sl.get<ProfileBloc>().add(const ProfileEvent.update());
        }
      },
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
                onTap: () => Navigator.maybePop(context, true),
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
    return Column(
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
    );
  }
}

class _FirstNameTextField extends StatelessWidget {
  const _FirstNameTextField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileEditBloc, ProfileEditState>(
      buildWhen: (_, current) => current.status == ProfileEditStatus.loaded,
      builder: (context, state) {
        return CustomTextField(
          controller: TextEditingController(text: state.firstName),
          labelText: 'First Name',
          keyboardType: TextInputType.text,
          textColor: AppColors.dark100,
          onChanged: (text) => context.read<ProfileEditBloc>().add(
                ProfileEditEvent.firstNameChanged(text),
              ),
        );
      },
    );
  }
}

class _LastNameTextField extends StatelessWidget {
  const _LastNameTextField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileEditBloc, ProfileEditState>(
      buildWhen: (_, current) => current.status == ProfileEditStatus.loaded,
      builder: (context, state) {
        return CustomTextField(
          controller: TextEditingController(text: state.lastName),
          labelText: 'Last Name',
          keyboardType: TextInputType.text,
          textColor: AppColors.dark100,
          onChanged: (text) => context.read<ProfileEditBloc>().add(
                ProfileEditEvent.lastNameChanged(text),
              ),
        );
      },
    );
  }
}

class _UsernameTextField extends StatelessWidget {
  const _UsernameTextField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileEditBloc, ProfileEditState>(
      buildWhen: (_, current) => current.status == ProfileEditStatus.loaded,
      builder: (context, state) {
        final error = state.nicknameError;
        return CustomTextField(
          controller: TextEditingController(text: state.username),
          labelText: 'Nickname',
          errorText: error?.toString(),
          keyboardType: TextInputType.text,
          textColor: AppColors.dark100,
          onChanged: (text) => context.read<ProfileEditBloc>().add(
                ProfileEditEvent.usernameChanged(text),
              ),
        );
      },
    );
  }
}

class _EmailTextField extends StatelessWidget {
  const _EmailTextField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileEditBloc, ProfileEditState>(
      buildWhen: (_, current) => current.status == ProfileEditStatus.loaded,
      builder: (context, state) {
        final error = state.emailError;
        return CustomTextField(
          controller: TextEditingController(text: state.email),
          labelText: 'Email',
          errorText: error?.toString(),
          keyboardType: TextInputType.emailAddress,
          textColor: AppColors.dark100,
          onChanged: (text) => context.read<ProfileEditBloc>().add(
                ProfileEditEvent.emailChanged(text),
              ),
        );
      },
    );
  }
}

class _RoleTextField extends StatelessWidget {
  const _RoleTextField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileEditBloc, ProfileEditState>(
      buildWhen: (_, current) => current.status == ProfileEditStatus.loaded,
      builder: (context, state) {
        return CustomTextField(
          controller: TextEditingController(text: state.role),
          labelText: 'Role',
          textColor: AppColors.dark100,
          enabled: false,
        );
      },
    );
  }
}
