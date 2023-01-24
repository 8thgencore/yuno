import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:yuno/app/helpers/remove_scrolling_glow.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/main/project/projects_list/bloc/projects_list_bloc.dart';
import 'package:yuno/ui/widgets/project_card_large_widget.dart';

class ProjectsListPage extends StatelessWidget {
  const ProjectsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.screen100,
      body: SafeArea(child: _ProjectsListContentWidget()),
    );
  }
}

class _ProjectsListContentWidget extends StatelessWidget {
  const _ProjectsListContentWidget({super.key});

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
                'Projects List',
                style: AppTypography.b18d,
              ),
            ],
          ),
        ),
        const Expanded(
          child: _ProjectListWidget(),
        ),
      ],
    );
  }
}

class _ProjectListWidget extends StatelessWidget {
  const _ProjectListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return removeScrollingGlow(
      child: BlocBuilder<ProjectsListBloc, ProjectsListState>(
        builder: (context, state) => state.maybeWhen(
          initial: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (projects) => ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            itemCount: projects.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: AppColors.white60,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      ProjectCardLargeWidget(project: projects[index]),
                      Padding(
                        padding: EdgeInsets.all(24),
                        child: LinearPercentIndicatorWidget(percent: 0.4),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          failure: (error) => Container(
            alignment: Alignment.center,
            width: double.infinity,
            child: Text(
              'Failed to get a list of projects from the server\n$error',
              style: AppTypography.l14g,
            ),
          ),
          orElse: () => Container(
            alignment: Alignment.center,
            width: double.infinity,
            child: Text(
              'Failed to get a list of projects from the server',
              style: AppTypography.l14g,
            ),
          ),
        ),
      ),
    );
  }
}
