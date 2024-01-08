import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:yuno/api/project/models.dart';
import 'package:yuno/api/task/models.dart';
import 'package:yuno/app/helpers/remove_scrolling_glow.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/l10n/l10n.dart';
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
              child: ToastWidget(
                text: context.l10n.projectDetailsPageSuccessDeleted,
                type: ToastType.warning,
              ),
            );
            context.pop(true);
          }
        },
        builder: (context, state) => state.maybeMap(
          loaded: (state) => state.isMember
              ? FloatingActionButton(
                  onPressed: () async {
                    final result = await context.pushNamed<bool>(
                      RouteName.taskCreate,
                      queryParameters: {'project_id': state.project.id},
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
    final l10n = context.l10n;
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
                context.l10n.projectDetailsPageTitle,
                style: AppTypography.b18d,
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: BlocBuilder<ProjectDetailsBloc, ProjectDetailsState>(
              builder: (context, state) => state.maybeMap(
                initial: (_) => const LoadingContainer(),
                loading: (_) => const LoadingContainer(),
                loaded: (state) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    _ProjectFullCardWidget(
                      isMember: state.isMember,
                      isOwner: state.isOwner,
                      project: IProjectWithUsers(
                        id: state.project.id,
                        name: state.project.name,
                        description: state.project.description,
                        link: state.project.link,
                        percentCompleted: state.project.percentCompleted,
                        users: state.project.users,
                      ),
                    ),
                    const SizedBox(height: 28),
                    _CheckListWidget(tasks: state.tasks, isMember: state.isMember),
                    const SizedBox(height: 80),
                  ],
                ),
                failure: (error) => ErrorContainer(text: l10n.errorFailedGetData),
                orElse: () => ErrorContainer(text: l10n.errorFailedGetData),
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
    final l10n = context.l10n;
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
            padding: const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 12),
            child: LinearPercentIndicatorWidget(percent: project.percentCompleted),
          ),
          if (isMember)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: GestureDetector(
                onTap: () async => context.pushNamed(
                  RouteName.projectMembers,
                  pathParameters: {'id': project.id},
                ),
                child: YunoWhiteTextButton(text: l10n.projectDetailsPageProjectMembers),
              ),
            )
          else
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: GestureDetector(
                onTap: () {
                  context.read<ProjectDetailsBloc>().add(const ProjectDetailsEvent.join());
                },
                child: YunoWhiteTextButton(text: l10n.projectDetailsPageJoinProject),
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
    final l10n = context.l10n;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: isOwner
              ? () async {
                  final val = await showDialog<bool?>(
                    context: context,
                    builder: (context) =>
                        YunoAlertDialog(text: l10n.projectDetailsPageDeleteProject),
                  );
                  if (val ?? true) {
                    if (context.mounted) {
                      context.read<ProjectDetailsBloc>().add(const ProjectDetailsEvent.delete());
                    }
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
              pathParameters: {'id': projectId},
            );
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (result ?? false) {
                context.read<ProjectDetailsBloc>().add(const ProjectDetailsEvent.update());
              }
            });
          },
          child: YunoIconButton(
            icon: Assets.svg.pencil.svg(
              colorFilter: const ColorFilter.mode(AppColors.secondary100, BlendMode.srcIn),
            ),
          ),
        ),
        GestureDetector(
          onTap: () async {
            final val = await showDialog<bool?>(
              context: context,
              builder: (context) => YunoAlertDialog(text: l10n.projectDetailsPageLeaveProject),
            );
            if (val ?? true) {
              if (context.mounted) {
                context.read<ProjectDetailsBloc>().add(const ProjectDetailsEvent.leave());
              }
            }
          },
          child: YunoIconButton(
            icon: Assets.svg.logout.svg(
              colorFilter: const ColorFilter.mode(AppColors.error100, BlendMode.srcIn),
            ),
          ),
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
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 6),
          child: Text(l10n.checklist, style: AppTypography.b18d),
        ),
        if (tasks.isNotEmpty)
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 24),
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: isMember
                    ? () async {
                        final result = await context.pushNamed<bool>(
                          RouteName.taskEdit,
                          pathParameters: {'id': tasks[index].id},
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
          ErrorContainer(text: l10n.projectDetailsPageChecklistEmpty),
      ],
    );
  }
}
