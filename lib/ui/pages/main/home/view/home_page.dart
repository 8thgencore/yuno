import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:intl/intl.dart';
import 'package:yuno/api/task/models/i_task_read.dart';
import 'package:yuno/app/helpers/remove_scrolling_glow.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/main/home/bloc/home_checklist_bloc.dart';
import 'package:yuno/ui/pages/main/home/bloc/home_header_bloc.dart';
import 'package:yuno/ui/pages/main/home/bloc/home_projects_bloc.dart';
import 'package:yuno/ui/widgets/error_container.dart';
import 'package:yuno/ui/widgets/project_card_small_widget.dart';
import 'package:yuno/utils/extensions/datetime.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Scaffold(
        backgroundColor: AppColors.screen100,
        body: _HomeContentWidget(),
      ),
    );
  }
}

class _HomeContentWidget extends StatelessWidget {
  const _HomeContentWidget();

  @override
  Widget build(BuildContext context) {
    return removeScrollingGlow(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            _TopCardWidget(),
            SizedBox(height: 18),
            _ProjectsListWidget(),
            SizedBox(height: 36),
            _CheckListWidget(),
            SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}

class _TopCardWidget extends StatelessWidget {
  const _TopCardWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 245,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary100,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          Assets.svg.homeTopOrnament.svg(
            width: double.infinity,
            color: AppColors.white40,
            fit: BoxFit.cover,
          ),
          BlocBuilder<HomeHeaderBloc, HomeHeaderState>(
            builder: (context, state) => state.maybeWhen(
              loading: () =>
                  const Center(child: CircularProgressIndicator(color: AppColors.white100)),
              loaded: (username, taskLength, lastTask) => Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 30),
                  Text(
                    'Hi, $username!',
                    style: AppTypography.b18l,
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: AppColors.dark100,
                    ),
                    child: Text(
                      '$taskLength Active Task',
                      style: AppTypography.l18l,
                    ),
                  ),
                  GestureDetector(
                    onTap: lastTask != null
                        ? () => context.pushNamed(
                              RouteName.taskEdit,
                              params: {'id': lastTask.id},
                            )
                        : null,
                    child: _LastTaskWidget(task: lastTask),
                  ),
                ],
              ),
              failure: (text) => Center(child: Text(text.toString(), style: AppTypography.b16l)),
              orElse: () => Center(child: Text('Error', style: AppTypography.b16l)),
            ),
          ),
        ],
      ),
    );
  }
}

class _LastTaskWidget extends StatelessWidget {
  const _LastTaskWidget({this.task});

  final ITaskRead? task;

  @override
  Widget build(BuildContext context) {
    var deadline = 'Has no deadline';
    if (task != null) {
      if (task!.deadline != null) {
        final DateFormat inputFormat = DateFormat('yyyy-MM-ddTHH:mm:ss');
        final DateTime? dateTime = inputFormat.tryParse(task!.deadline!);
        if (dateTime != null) {
          final outputFormat = DateFormat('dd MMMM yyyy, HH:mm');
          deadline = outputFormat.format(dateTime);
        }
      }
    }

    return Container(
      margin: const EdgeInsets.all(14),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: AppColors.white100,
      ),
      child: task != null
          ? Row(
              children: [
                Container(
                  height: 46,
                  width: 4,
                  decoration: BoxDecoration(
                    color: AppColors.secondary100,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        task!.name,
                        style: AppTypography.b16d,
                        overflow: TextOverflow.fade,
                        softWrap: false,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        deadline,
                        style: AppTypography.l12g,
                        overflow: TextOverflow.fade,
                        softWrap: false,
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios, color: AppColors.grey80),
              ],
            )
          : Container(
              alignment: Alignment.center,
              width: double.infinity,
              child: Text(
                'No upcoming task',
                style: AppTypography.l14g,
              ),
            ),
    );
  }
}

class _ProjectsListWidget extends StatelessWidget {
  const _ProjectsListWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Projects', style: AppTypography.b18d),
              GestureDetector(
                onTap: () => context.pushNamed(RouteName.projects),
                child: Text(
                  'View All',
                  style: AppTypography.r14d.copyWith(color: AppColors.primary100),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 18),
        SizedBox(
          height: 164,
          child: BlocBuilder<HomeProjectsBloc, HomeProjectsState>(
            builder: (context, state) => state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (projects) => projects.isNotEmpty
                  ? ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      itemCount: projects.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () => context.pushNamed(
                            RouteName.project,
                            params: {'id': projects[index].id},
                          ),
                          child: ProjectCardSmallWidget(project: projects[index]),
                        );
                      },
                    )
                  : const ErrorContainer(text: 'Projects list is empty'),
              failure: (error) => Text(error.toString(), style: AppTypography.l14g),
              orElse: () => Text('Error', style: AppTypography.l14g),
            ),
          ),
        ),
      ],
    );
  }
}

class _CheckListWidget extends StatelessWidget {
  const _CheckListWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 6),
          child: Text('Checklist', style: AppTypography.b18d),
        ),
        BlocBuilder<HomeChecklistBloc, HomeChecklistState>(
          builder: (context, state) => state.maybeWhen(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (tasks) => tasks.isNotEmpty
                ? ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    itemCount: tasks.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          context.pushNamed(
                            RouteName.taskEdit,
                            params: {'id': tasks[index].id},
                          );
                        },
                        child: _TaskCardWidget(task: tasks[index]),
                      );
                    },
                  )
                : const ErrorContainer(text: 'Checklist is empty'),
            failure: (error) => ErrorContainer(text: 'Projects list is empty\n$error'),
            orElse: () => const ErrorContainer(text: 'No upcoming task'),
          ),
        ),
      ],
    );
  }
}

class _TaskCardWidget extends StatefulWidget {
  const _TaskCardWidget({required this.task});

  final ITaskRead task;

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
                  // TODO:
                  'Project name',
                  style: AppTypography.l12g,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                ),
              ],
            ),
          ),
          Transform.scale(
            scale: 1.4,
            child: Checkbox(
              value: value,
              onChanged: (b) {
                setState(() {
                  value = !value;
                  context
                      .read<HomeChecklistBloc>()
                      .add(HomeChecklistEvent.checkItem(id: widget.task.id));
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
