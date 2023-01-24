import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:yuno/app/helpers/remove_scrolling_glow.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/main/project/project_page/bloc/project_bloc.dart';
import 'package:yuno/ui/widgets/custom_rounded_button.dart';
import 'package:yuno/ui/widgets/custom_text_field.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key, this.goRouterState});

  final GoRouterState? goRouterState;

  @override
  Widget build(BuildContext context) {
    // check params in urls
    bool isParams = false;
    if (goRouterState?.params.containsKey('id') != null) {
      final paramsLength = goRouterState?.params['id']!.length ?? 0;
      isParams = paramsLength > 16;
    }
    return Scaffold(
      backgroundColor: AppColors.screen100,
      body: SafeArea(child: _CreateProjectContentWidget(isParams: isParams)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: CustomRoundedButton(
          textButton: isParams ? 'Update' : 'Create project',
          onPressed: () {
            final currentNode = FocusScope.of(context);
            if (currentNode.focusedChild != null && !currentNode.hasPrimaryFocus) {
              FocusManager.instance.primaryFocus?.unfocus();
            }
            isParams
                ? context.read<ProjectBloc>().add(const ProjectEvent.updated())
                : context.read<ProjectBloc>().add(const ProjectEvent.saved());
          },
          textColor: AppColors.white100,
          buttonColor: AppColors.primary100,
        ),
      ),
    );
  }
}

class _CreateProjectContentWidget extends StatelessWidget {
  const _CreateProjectContentWidget({required this.isParams});

  final bool isParams;

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
                isParams ? 'Update project' : 'Create new project',
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
    return BlocBuilder<ProjectBloc, ProjectState>(
      buildWhen: (_, current) => current.status == ProjectStatus.loaded,
      builder: (context, state) {
        return CustomTextField(
          controller: TextEditingController(text: state.name),
          labelText: 'Project Name',
          keyboardType: TextInputType.text,
          textColor: AppColors.dark100,
          onChanged: (text) => context.read<ProjectBloc>().add(
                ProjectEvent.nameChanged(text),
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
    return BlocBuilder<ProjectBloc, ProjectState>(
      buildWhen: (_, current) => current.status == ProjectStatus.loaded,
      builder: (context, state) {
        return CustomTextField(
          controller: TextEditingController(text: state.description),
          labelText: 'Project Description',
          keyboardType: TextInputType.text,
          textColor: AppColors.dark100,
          onChanged: (text) => context.read<ProjectBloc>().add(
                ProjectEvent.descriptionChanged(text),
              ),
        );
      },
    );
  }
}
