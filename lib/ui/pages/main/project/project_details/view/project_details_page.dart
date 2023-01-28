import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:yuno/api/project/models/i_project_with_users.dart';
import 'package:yuno/api/task/models/i_task_read.dart';
import 'package:yuno/app/helpers/remove_scrolling_glow.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/main/project/project_details/bloc/project_details_bloc.dart';
import 'package:yuno/ui/widgets/error_container.dart';
import 'package:yuno/ui/widgets/project_card_large_widget.dart';

class ProjectDetailsPage extends StatelessWidget {
  const ProjectDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screen100,
      body: SafeArea(
        child: removeScrollingGlow(
          child: const _ProjectContentWidget(),
        ),
      ),
      floatingActionButton: BlocBuilder<ProjectDetailsBloc, ProjectDetailsState>(
        builder: (context, state) => state.maybeWhen(
          loaded: (project, _, isMember) => isMember
              ? FloatingActionButton(
                  onPressed: () => context.pushNamed<bool>(
                    RouteName.taskCreate,
                    queryParams: {'project_id': project.id},
                  ).then((result) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (result ?? false) {
                        context.read<ProjectDetailsBloc>().add(const ProjectDetailsEvent.update());
                      }
                    });
                  }),
                  child: const Icon(Icons.add, size: 32),
                )
              : const SizedBox(),
          orElse: () => const SizedBox(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class _ProjectContentWidget extends StatelessWidget {
  const _ProjectContentWidget();

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
                onTap: () => context.pop(),
                child: Assets.svg.backArrow.svg(),
              ),
              const SizedBox(height: 12),
              Text(
                'Project Details',
                style: AppTypography.b18d,
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: BlocBuilder<ProjectDetailsBloc, ProjectDetailsState>(
              builder: (context, state) => state.maybeWhen(
                initial: () => const Center(child: CircularProgressIndicator()),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (project, tasks, isMember) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    _ProjectFullCardWidget(
                      isMember: isMember,
                      project: IProjectWithUsers(
                        id: project.id,
                        name: project.name,
                        description: project.description,
                        link: project.link,
                        users: project.users,
                      ),
                    ),
                    const SizedBox(height: 28),
                    _CheckListWidget(tasks: tasks, isMember: isMember),
                    const SizedBox(height: 28),
                  ],
                ),
                failure: (error) => ErrorContainer(
                  text: 'Failed to get a project from the server\n$error',
                ),
                orElse: () => const ErrorContainer(
                  text: 'Failed to get a project from the server',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ProjectFullCardWidget extends StatelessWidget {
  const _ProjectFullCardWidget({
    required this.project,
    required this.isMember,
  });

  final IProjectWithUsers project;
  final bool isMember;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isMember
          ? () => context.pushNamed(RouteName.projectEdit, params: {'id': project.id})
          : null,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        height: 200,
        decoration: BoxDecoration(
          color: AppColors.white60,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            ProjectCardLargeWidget(project: project),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: LinearPercentIndicatorWidget(percent: 0.4),
            ),
          ],
        ),
      ),
    );
  }
}

class _CheckListWidget extends StatelessWidget {
  const _CheckListWidget({
    required this.tasks,
    required this.isMember,
  });

  final List<ITaskRead> tasks;
  final bool isMember;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 6),
          child: Text('Checklist', style: AppTypography.b18d),
        ),
        if (tasks.isNotEmpty)
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 24),
            itemCount: tasks.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: isMember
                    ? () async {
                        await context.pushNamed<bool>(
                          RouteName.taskEdit,
                          params: {'id': tasks[index].id},
                        ).then((result) {
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            if (result ?? false) {
                              context
                                  .read<ProjectDetailsBloc>()
                                  .add(const ProjectDetailsEvent.update());
                            }
                          });
                        });
                      }
                    : null,
                child: _TaskCardWidget(task: tasks[index], isMember: isMember),
              );
            },
          )
        else
          const ErrorContainer(text: 'Tasks list is empty'),
      ],
    );
  }
}

class _TaskCardWidget extends StatefulWidget {
  const _TaskCardWidget({
    required this.task,
    required this.isMember,
  });

  final ITaskRead task;
  final bool isMember;

  @override
  State<_TaskCardWidget> createState() => _TaskCardWidgetState();
}

class _TaskCardWidgetState extends State<_TaskCardWidget> {
  late bool value;

  @override
  void initState() {
    super.initState();
    value = widget.task.done ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.white100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.task.name,
                  style: AppTypography.b16d,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                ),
                const SizedBox(height: 6),
                Text(
                  widget.task.deadline ?? '',
                  style: AppTypography.l12g,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                ),
              ],
            ),
          ),
          if (widget.isMember)
            Transform.scale(
              scale: 1.4,
              child: Checkbox(
                value: value,
                onChanged: (v) {
                  setState(() {
                    value = !value;
                    context
                        .read<ProjectDetailsBloc>()
                        .add(ProjectDetailsEvent.checkedTask(widget.task.id));
                  });
                },
              ),
            )
          else
            const SizedBox(),
        ],
      ),
    );
  }
}
