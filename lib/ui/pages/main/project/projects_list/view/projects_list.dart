import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:yuno/api/project/models/i_project_with_users.dart';
import 'package:yuno/app/helpers/remove_scrolling_glow.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/main/project/projects_list/bloc/projects_list_bloc.dart';
import 'package:yuno/ui/widgets/error_container.dart';
import 'package:yuno/ui/widgets/linear_percent_indicator_large_widget.dart';
import 'package:yuno/ui/widgets/project_card_medium_widget.dart';

class ProjectsListPage extends StatelessWidget {
  const ProjectsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screen100,
      body: SafeArea(
        child: removeScrollingGlow(
          child: const _ProjectsListContentWidget(),
        ),
      ),
    );
  }
}

class _ProjectsListContentWidget extends StatelessWidget {
  const _ProjectsListContentWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 18, left: 24, right: 24, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => context.pop(true),
                child: Assets.svg.backArrow.svg(),
              ),
              const SizedBox(height: 12),
              Text(
                'Projects List',
                style: AppTypography.b18d,
              ),
            ],
          ),
        ),
        const Expanded(child: _ProjectListWidget()),
      ],
    );
  }
}

class _ProjectListWidget extends StatelessWidget {
  const _ProjectListWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectsListBloc, ProjectsListState>(
      builder: (context, state) => state.maybeWhen(
        initial: () => const Center(child: CircularProgressIndicator()),
        loading: () => const Center(child: CircularProgressIndicator()),
        loaded: (projects) => ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          itemCount: projects.length,
          itemBuilder: (BuildContext context, int index) {
            return _ProjectFullCardWidget(project: projects[index]);
          },
        ),
        failure: (error) => ErrorContainer(
          text: 'Failed to get a project from the server\n$error',
        ),
        orElse: () => const ErrorContainer(
          text: 'Failed to get a project from the server',
        ),
      ),
    );
  }
}

class _ProjectFullCardWidget extends StatelessWidget {
  const _ProjectFullCardWidget({required this.project});

  final IProjectWithUsers project;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(RouteName.project, params: {'id': project.id}),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            color: AppColors.white60,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              ProjectCardMediumWidget(project: project),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: LinearPercentIndicatorWidget(percent: 0.4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
