import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:yuno/app/helpers/remove_scrolling_glow.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/main/project/project_edit/bloc/project_edit_bloc.dart';
import 'package:yuno/ui/widgets/custom_rounded_button.dart';
import 'package:yuno/ui/widgets/custom_text_field.dart';

class ProjectEditPage extends StatelessWidget {
  const ProjectEditPage({
    this.isUpdate = false,
    super.key,
  });

  final bool isUpdate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screen100,
      body: SafeArea(child: _CreateProjectContentWidget(isUpdate: isUpdate)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: CustomRoundedButton(
          textButton: isUpdate ? 'Update' : 'Create project',
          onPressed: () {
            final currentNode = FocusScope.of(context);
            if (currentNode.focusedChild != null && !currentNode.hasPrimaryFocus) {
              FocusManager.instance.primaryFocus?.unfocus();
            }
            isUpdate
                ? context.read<ProjectEditBloc>().add(const ProjectEditEvent.updated())
                : context.read<ProjectEditBloc>().add(const ProjectEditEvent.saved());
          },
          textColor: AppColors.white100,
          buttonColor: AppColors.primary100,
        ),
      ),
    );
  }
}

class _CreateProjectContentWidget extends StatelessWidget {
  const _CreateProjectContentWidget({required this.isUpdate});

  final bool isUpdate;

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
                onTap: () => context.pop(),
                child: Assets.svg.backArrow.svg(),
              ),
              const SizedBox(height: 12),
              Text(
                isUpdate ? 'Update project' : 'Create new project',
                style: AppTypography.b18d,
              ),
            ],
          ),
        ),
        Expanded(
          child: removeScrollingGlow(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              decoration: const BoxDecoration(
                color: AppColors.white60,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
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
    return Column(
      children: const [
        SizedBox(height: 14),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 14),
          child: _ProjectNameTextField(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 14),
          child: _ProjectDescriptionTextField(),
        ),
        SizedBox(height: 90),
      ],
    );
  }
}

class _ProjectNameTextField extends StatelessWidget {
  const _ProjectNameTextField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectEditBloc, ProjectEditState>(
      buildWhen: (_, current) => current.status == ProjectEditStatus.loaded,
      builder: (context, state) {
        return CustomTextField(
          controller: TextEditingController(text: state.name),
          labelText: 'Project Name',
          keyboardType: TextInputType.text,
          textColor: AppColors.dark100,
          onChanged: (text) => context.read<ProjectEditBloc>().add(
                ProjectEditEvent.nameChanged(text),
              ),
        );
      },
    );
  }
}

class _ProjectDescriptionTextField extends StatelessWidget {
  const _ProjectDescriptionTextField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectEditBloc, ProjectEditState>(
      buildWhen: (_, current) => current.status == ProjectEditStatus.loaded,
      builder: (context, state) {
        return CustomTextField(
          controller: TextEditingController(text: state.description),
          labelText: 'Project Description',
          keyboardType: TextInputType.text,
          textColor: AppColors.dark100,
          onChanged: (text) => context.read<ProjectEditBloc>().add(
                ProjectEditEvent.descriptionChanged(text),
              ),
        );
      },
    );
  }
}