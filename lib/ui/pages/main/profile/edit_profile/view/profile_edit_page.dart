import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:yuno/app/helpers/remove_scrolling_glow.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/l10n/l10n.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/main/profile/edit_profile/bloc/profile_edit_bloc.dart';
import 'package:yuno/ui/widgets/buttons/custom_rounded_button.dart';
import 'package:yuno/ui/widgets/custom_text_field.dart';
import 'package:yuno/ui/widgets/toast_widget.dart';
import 'package:yuno/utils/toast.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocListener<ProfileEditBloc, ProfileEditState>(
      listener: (context, state) async {
        switch (state.status) {
          case ProfileEditStatus.initial:
            context.loaderOverlay.show();
          case ProfileEditStatus.loading:
            context.loaderOverlay.show();
          case ProfileEditStatus.loaded:
            context.loaderOverlay.hide();
          case ProfileEditStatus.success:
            context.loaderOverlay.hide();
            showToast(
              context,
              child: ToastWidget(
                text: l10n.profileEditPageSuccessUpdate,
                type: ToastType.success,
              ),
            );
          case ProfileEditStatus.failure:
            context.loaderOverlay.hide();
            showToast(
              context,
              child: ToastWidget(
                text: state.serverError ?? l10n.errorServerError,
                type: ToastType.failure,
              ),
            );

          case ProfileEditStatus.deleted:
            await context.pushNamed(RouteName.login);
        }
      },
      child: LoaderOverlay(
        overlayColor: Colors.black.withOpacity(0.4),
        child: PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, _) {
            if (didPop) {
              return;
            }
            context.pop(true);
          },
          child: Scaffold(
            backgroundColor: AppColors.screen100,
            body: const SafeArea(child: _ProfileEditContentWidget()),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: CustomRoundedButton(
                textButton: l10n.profileEditPageSaveButton,
                onPressed: () {
                  final currentNode = FocusScope.of(context);
                  if (currentNode.focusedChild != null && !currentNode.hasPrimaryFocus) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  }
                  context.read<ProfileEditBloc>().add(const ProfileEditEvent.saved());
                },
              ),
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
    final l10n = context.l10n;
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
                l10n.profileEditPageTitle,
                style: AppTypography.b18d,
              ),
            ],
          ),
        ),
        removeScrollingGlow(
          child: Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              decoration: const BoxDecoration(
                color: AppColors.white60,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
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
    return const Column(
      children: [
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
        Padding(
          padding: EdgeInsets.symmetric(vertical: 14),
          child: _DeleteAccountWidget(),
        ),
        SizedBox(height: 90),
      ],
    );
  }
}

class _DeleteAccountWidget extends StatelessWidget {
  const _DeleteAccountWidget();

  Future<void> _showDeleteConfirmationDialog(BuildContext context) async {
    final confirmed = await showDialog<bool>(
          context: context,
          builder: (dialogContext) {
            return AlertDialog(
              title: const Text('Confirm Delete'),
              content: const Text(
                'Are you sure you want to delete your account? This action cannot be undone.',
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(dialogContext).pop(false);
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(dialogContext).pop(true);
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: AppColors.error60,
                  ),
                  child: const Text('Delete'),
                ),
              ],
            );
          },
        ) ??
        false;

    if (confirmed && context.mounted) {
      context.read<ProfileEditBloc>().add(const ProfileEditEvent.deleteMyAccount());
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomRoundedButton(
      textButton: 'Delete account',
      backgroundColor: AppColors.error60,
      onPressed: () async => _showDeleteConfirmationDialog(context),
    );
  }
}

class _FirstNameTextField extends StatefulWidget {
  const _FirstNameTextField();

  @override
  State<_FirstNameTextField> createState() => _FirstNameTextFieldState();
}

class _FirstNameTextFieldState extends State<_FirstNameTextField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileEditBloc, ProfileEditState>(
      buildWhen: (_, current) => current.status == ProfileEditStatus.loaded,
      builder: (context, state) {
        _controller.value = TextEditingValue(text: state.firstName);
        return CustomTextField(
          controller: _controller,
          labelText: context.l10n.profileEditPageFirstName,
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

class _LastNameTextField extends StatefulWidget {
  const _LastNameTextField();

  @override
  State<_LastNameTextField> createState() => _LastNameTextFieldState();
}

class _LastNameTextFieldState extends State<_LastNameTextField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileEditBloc, ProfileEditState>(
      buildWhen: (_, current) => current.status == ProfileEditStatus.loaded,
      builder: (context, state) {
        _controller.value = TextEditingValue(text: state.lastName);
        return CustomTextField(
          controller: _controller,
          labelText: context.l10n.profileEditPageLastName,
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

class _UsernameTextField extends StatefulWidget {
  const _UsernameTextField();

  @override
  State<_UsernameTextField> createState() => _UsernameTextFieldState();
}

class _UsernameTextFieldState extends State<_UsernameTextField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileEditBloc, ProfileEditState>(
      buildWhen: (_, current) => current.status == ProfileEditStatus.loaded,
      builder: (context, state) {
        final error = state.usernameError;
        _controller.value = TextEditingValue(text: state.username);
        return CustomTextField(
          controller: _controller,
          labelText: context.l10n.profileEditPageNickname,
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

class _EmailTextField extends StatefulWidget {
  const _EmailTextField();

  @override
  State<_EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<_EmailTextField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileEditBloc, ProfileEditState>(
      buildWhen: (_, current) => current.status == ProfileEditStatus.loaded,
      builder: (context, state) {
        final error = state.emailError;
        _controller.value = TextEditingValue(text: state.email);
        return CustomTextField(
          controller: _controller,
          labelText: context.l10n.profileEditPageEmail,
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

class _RoleTextField extends StatefulWidget {
  const _RoleTextField();

  @override
  State<_RoleTextField> createState() => _RoleTextFieldState();
}

class _RoleTextFieldState extends State<_RoleTextField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileEditBloc, ProfileEditState>(
      buildWhen: (_, current) => current.status == ProfileEditStatus.loaded,
      builder: (context, state) {
        _controller.value = TextEditingValue(text: state.role ?? '');
        return CustomTextField(
          controller: _controller,
          labelText: context.l10n.profileEditPageRole,
          textColor: AppColors.dark60,
          enabled: false,
        );
      },
    );
  }
}
