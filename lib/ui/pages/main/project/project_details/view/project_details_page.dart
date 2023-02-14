import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:yuno/api/project/models.dart';
import 'package:yuno/api/task/models.dart';
import 'package:yuno/app/helpers/remove_scrolling_glow.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/main/project/project_details/bloc/project_details_bloc.dart';
import 'package:yuno/ui/widgets/buttons/yuno_icon_button.dart';
import 'package:yuno/ui/widgets/buttons/yuno_white_text_button.dart';
import 'package:yuno/ui/widgets/error_container.dart';
import 'package:yuno/ui/widgets/linear_percent_indicator_large_widget.dart';
import 'package:yuno/ui/widgets/loading_container.dart';
import 'package:yuno/ui/widgets/project_card_large_widget.dart';
import 'package:yuno/ui/widgets/task_card_widget.dart';
import 'package:yuno/ui/widgets/toast_widget.dart';
import 'package:yuno/ui/widgets/yuno_alert_dialog.dart';
import 'package:yuno/utils/toast.dart';

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
      floatingActionButton: BlocConsumer<ProjectDetailsBloc, ProjectDetailsState>(
        listener: (context, state) {
          if (state == const ProjectDetailsState.deleted()) {
            showToast(
              context,
              child: const ToastWidget(
                text: 'Project has been successfully deleted',
                type: ToastType.info,
              ),
            );
            context.pop(true);
          }
        },
        builder: (context, state) => state.maybeWhen(
          loaded: (project, _, isMember, isOwner) => isMember
              ? FloatingActionButton(
                  onPressed: () async {
                    final result = await context.pushNamed<bool>(
                      RouteName.taskCreate,
                      queryParams: {'project_id': project.id},
                    );
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (result ?? false) {
                        context.read<ProjectDetailsBloc>().add(const ProjectDetailsEvent.update());
                      }
                    });
                  },
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
                initial: () => const LoadingContainer(),
                loading: () => const LoadingContainer(),
                loaded: (project, tasks, isMember, isOwner) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    _ProjectFullCardWidget(
                      isMember: isMember,
                      isOwner: isOwner,
                      project: IProjectWithUsers(
                        id: project.id,
                        name: project.name,
                        description: project.description,
                        link: project.link,
                        percentCompleted: project.percentCompleted,
                        users: project.users,
                      ),
                    ),
                    const SizedBox(height: 28),
                    _CheckListWidget(tasks: tasks, isMember: isMember),
                    const SizedBox(height: 80),
                  ],
                ),
                failure: (error) => const ErrorContainer(
                  text: 'Failed to get a project from the server',
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
    required this.isOwner,
  });

  final IProjectWithUsers project;
  final bool isMember;
  final bool isOwner;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: AppColors.white60,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          ProjectCardLargeWidget(project: project),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 12),
            child: LinearPercentIndicatorWidget(percent: project.percentCompleted),
          ),
          if (isMember)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: YunoWhiteTextButton(text: 'Invite People'),
            )
          else
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: GestureDetector(
                onTap: () {
                  context.read<ProjectDetailsBloc>().add(const ProjectDetailsEvent.join());
                },
                child: const YunoWhiteTextButton(text: 'Join The Project'),
              ),
            ),
          if (isMember)
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 12, bottom: 24),
              child: _ButtonsRowWidget(isOwner: isOwner, projectId: project.id),
            )
          else
            const SizedBox(),
        ],
      ),
    );
  }
}

class _ButtonsRowWidget extends StatelessWidget {
  const _ButtonsRowWidget({
    required this.projectId,
    required this.isOwner,
  });

  final String projectId;
  final bool isOwner;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: isOwner
              ? () async {
                  final bool? val = await showDialog<bool?>(
                    context: context,
                    builder: (context) => const YunoAlertDialog(text: 'Delete The Project?'),
                  );
                  if (val ?? true) {
                    context.read<ProjectDetailsBloc>().add(const ProjectDetailsEvent.delete());
                  }
                }
              : null,
          child: YunoIconButton(
            icon: Icon(
              Icons.delete_outline,
              size: 26,
              color: isOwner ? AppColors.error100 : AppColors.error40,
            ),
          ),
        ),
        GestureDetector(
          onTap: () async {
            final result = await context.pushNamed<bool>(
              RouteName.projectEdit,
              params: {'id': projectId},
            );
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (result ?? false) {
                context.read<ProjectDetailsBloc>().add(const ProjectDetailsEvent.update());
              }
            });
          },
          child: YunoIconButton(icon: Assets.svg.pencil.svg(color: AppColors.secondary100)),
        ),
        GestureDetector(
          onTap: () async {
            final bool? val = await showDialog<bool?>(
              context: context,
              builder: (context) => const YunoAlertDialog(text: 'Leave The Project?'),
            );
            if (val ?? true) {
              context.read<ProjectDetailsBloc>().add(const ProjectDetailsEvent.leave());
            }
          },
          child: YunoIconButton(icon: Assets.svg.logout.svg(color: AppColors.error100)),
        ),
      ],
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
                        final result = await context.pushNamed<bool>(
                          RouteName.taskEdit,
                          params: {'id': tasks[index].id},
                        );
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          if (result ?? false) {
                            context
                                .read<ProjectDetailsBloc>()
                                .add(const ProjectDetailsEvent.update());
                          }
                        });
                      }
                    : null,
                child: TaskCardWidget(
                  id: tasks[index].id,
                  title: tasks[index].name,
                  deadline: tasks[index].deadline,
                  done: tasks[index].done,
                  onClickCheckBox: () => context
                      .read<ProjectDetailsBloc>()
                      .add(ProjectDetailsEvent.checkedTask(tasks[index].id)),
                  onDismissible: () => context
                      .read<ProjectDetailsBloc>()
                      .add(ProjectDetailsEvent.deletedTask(tasks[index].id)),
                  isMember: isMember,
                ),
              );
            },
          )
        else
          const ErrorContainer(text: 'Tasks list is empty'),
      ],
    );
  }
}
