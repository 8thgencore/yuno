import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/main/profile_pages/edit_profile/bloc/profile_edit_bloc.dart';
import 'package:yuno/ui/widgets/custom_rounded_button.dart';
import 'package:yuno/ui/widgets/custom_text_field.dart';
import 'package:yuno/ui/widgets/toast_widget.dart';

class ProfileEditPage extends StatefulWidget {
  const ProfileEditPage({super.key});

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileEditBloc, ProfileEditState>(
      listener: (context, state) {
        switch (state.status) {
          case ProfileEditStatus.initial:
            break;
          case ProfileEditStatus.loading:
            context.loaderOverlay.show();
            break;
          case ProfileEditStatus.loaded:
            context.loaderOverlay.hide();
            break;
          case ProfileEditStatus.success:
            context.loaderOverlay.hide();
            fToast.showToast(
              child: const ToastWidget(
                text: 'User information has been successfully updated',
                type: ToastType.success,
              ),
              gravity: ToastGravity.TOP,
            );
            break;
          case ProfileEditStatus.failure:
            context.loaderOverlay.hide();
            fToast.showToast(
              child: ToastWidget(
                text: state.serverError ?? 'Server Error',
                type: ToastType.failure,
              ),
              gravity: ToastGravity.TOP,
            );
            break;
        }
      },
      child: LoaderOverlay(
        child: Scaffold(
          backgroundColor: AppColors.screen100,
          body: const SafeArea(child: _ProfileEditContentWidget()),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: CustomRoundedButton(
              textButton: 'Save Changes',
              onPressed: () {
                final currentNode = FocusScope.of(context);
                if (currentNode.focusedChild != null && !currentNode.hasPrimaryFocus) {
                  FocusManager.instance.primaryFocus?.unfocus();
                }
                context.read<ProfileEditBloc>().add(const ProfileEditEvent.saved());
              },
              textColor: AppColors.white100,
              buttonColor: AppColors.primary100,
            ),
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
                onTap: () => context.pop(true),
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
          textColor: AppColors.dark60,
          enabled: false,
        );
      },
    );
  }
}
