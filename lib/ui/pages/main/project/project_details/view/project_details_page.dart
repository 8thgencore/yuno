import 'package:flutter/material.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:yuno/api/project/models/i_project_with_users.dart';
import 'package:yuno/api/task/models/i_task_read.dart';
import 'package:yuno/app/helpers/remove_scrolling_glow.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/widgets/project_card_large_widget.dart';

class ProjectDetailsPage extends StatelessWidget {
  const ProjectDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.screen100,
      body: SafeArea(child: _ProjectContentWidget()),
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
          child: removeScrollingGlow(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  _ProjectFullCardWidget(
                    project: IProjectWithUsers(
                      id: "213123",
                      name: "213213",
                      description: "12321312",
                      link: "12321213",
                    ),
                  ),
                  SizedBox(height: 28),
                  _CheckListWidget(),
                  SizedBox(height: 28),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ProjectFullCardWidget extends StatelessWidget {
  const _ProjectFullCardWidget({required this.project});

  final IProjectWithUsers project;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(RouteName.projectEdit, params: {'id': project.id}),
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
  const _CheckListWidget();

  @override
  Widget build(BuildContext context) {
    final tasks = [
      ITaskRead(name: "213", id: "21321"),
      ITaskRead(name: "213", id: "21321"),
      ITaskRead(name: "213", id: "21321"),
      ITaskRead(name: "213", id: "21321"),
      ITaskRead(name: "213", id: "21321"),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 6),
          child: Text('Checklist', style: AppTypography.b18d),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 24),
          itemCount: tasks.length,
          itemBuilder: (BuildContext context, int index) {
            return _TaskCardWidget(task: tasks[index]);
          },
        ),

        //   BlocBuilder<HomeChecklistBloc, HomeChecklistState>(
        //     builder: (context, state) => state.maybeWhen(
        //       loading: () => const Center(
        //         child: CircularProgressIndicator(),
        //       ),
        //       loaded: (tasks) => tasks.isNotEmpty
        //           ? ListView.builder(
        //         shrinkWrap: true,
        //         physics: const NeverScrollableScrollPhysics(),
        //         padding: const EdgeInsets.symmetric(horizontal: 24),
        //         itemCount: tasks.length,
        //         itemBuilder: (BuildContext context, int index) {
        //           return TaskCardWidget(task: tasks[index]);
        //         },
        //       )
        //           : Container(
        //         alignment: Alignment.center,
        //         width: double.infinity,
        //         child: Text(
        //           'Checklist is empty',
        //           style: AppTypography.l14g,
        //         ),
        //       ),
        //       failure: (error) => Container(
        //         alignment: Alignment.center,
        //         width: double.infinity,
        //         child: Text(
        //           error.toString(),
        //           style: AppTypography.r14d,
        //         ),
        //       ),
        //       orElse: () => Container(
        //         alignment: Alignment.center,
        //         width: double.infinity,
        //         child: Text(
        //           'No upcoming task',
        //           style: AppTypography.r14d,
        //         ),
        //       ),
        //     ),
        //   ),
        // ],
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
                  widget.task.deadline ?? '123123',
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
                  // context
                  //     .read<HomeChecklistBloc>()
                  //     .add(HomeChecklistEvent.checkItem(id: widget.task.id));
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
