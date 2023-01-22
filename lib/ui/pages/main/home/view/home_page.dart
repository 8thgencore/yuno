import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:yuno/api/task/models/i_task_read.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/app/helpers/remove_scrolling_glow.dart';
import 'package:yuno/data/repository/user_repository.dart';
import 'package:yuno/domain/repository/api_task_repository.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/main/home/bloc/home_header_bloc.dart';
import 'package:yuno/ui/widgets/avatar_stacked.dart';

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
    return BlocBuilder<HomeHeaderBloc, HomeHeaderState>(
      builder: (context, state) => state.maybeWhen(
        loading: () => Container(
          margin: const EdgeInsets.all(10),
          height: 245,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.primary100,
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Center(child: CircularProgressIndicator(color: AppColors.white100)),
        ),
        loaded: (username, taskLength, lastTask) => Container(
          margin: const EdgeInsets.all(10),
          height: 245,
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
              Column(
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
                  _LastTaskWidget(task: lastTask),
                ],
              )
            ],
          ),
        ),
        failure: (text) => Container(
          margin: const EdgeInsets.all(10),
          height: 245,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.primary100,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(child: Text(text.toString(), style: AppTypography.b16l)),
        ),
        orElse: () => Container(
          margin: const EdgeInsets.all(10),
          height: 245,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.primary100,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}

class _LastTaskWidget extends StatelessWidget {
  const _LastTaskWidget({this.task});

  final ITaskRead? task;

  @override
  Widget build(BuildContext context) {
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
                        task!.deadline ?? 'Has no deadline',
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
                style: AppTypography.r14d,
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
              Text('View All', style: AppTypography.r14d.copyWith(color: AppColors.primary100)),
            ],
          ),
        ),
        const SizedBox(height: 18),
        SizedBox(
          height: 164,
          child: ListView.builder(
            // key: GlobalKey(),
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return const _ProjectCardWidget();
            },
          ),
        ),
      ],
    );
  }
}

class _ProjectCardWidget extends StatelessWidget {
  const _ProjectCardWidget();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 222,
          margin: const EdgeInsets.symmetric(horizontal: 12),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
            color: AppColors.white80,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 160,
                        child: Text(
                          'Rando Mobile Ap22222',
                          style: AppTypography.b16d,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                        ),
                      ),
                      Text(
                        'Mobile App Redesign',
                        style: AppTypography.l12g,
                        overflow: TextOverflow.fade,
                        softWrap: false,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 16),
              const AvatarStacked(
                urlImages: [
                  'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80',
                  'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
                  'https://images.unsplash.com/photo-1616766098956-c81f12114571?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
                ],
              ),
            ],
          ),
        ),
        const Positioned(
          left: 24,
          bottom: 0,
          child: LinearPercentIndicatorWidget(percent: 0.62),
        ),
      ],
    );
  }
}

class LinearPercentIndicatorWidget extends StatelessWidget {
  const LinearPercentIndicatorWidget({
    super.key,
    required this.percent,
  });

  final double percent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.white100,
      ),
      child: Row(
        children: [
          LinearPercentIndicator(
            // width: MediaQuery.of(context).size.width - 50,
            width: 168,
            lineHeight: 8,
            percent: percent,
            barRadius: const Radius.circular(16),
            progressColor: AppColors.primary100,
            backgroundColor: AppColors.dark10,
          ),
          Text(
            '${(percent * 100).round()}%',
            style: AppTypography.r10d,
          ),
        ],
      ),
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
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text('Checklist', style: AppTypography.b18d),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return const TaskCardWidget();
          },
        ),
      ],
    );
  }
}

class TaskCardWidget extends StatefulWidget {
  const TaskCardWidget({
    super.key,
  });

  @override
  State<TaskCardWidget> createState() => _TaskCardWidgetState();
}

class _TaskCardWidgetState extends State<TaskCardWidget> {
  bool value = false;

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
                  'Icon Design',
                  style: AppTypography.b16d,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                ),
                const SizedBox(height: 6),
                Text(
                  'Canoz Mobile App',
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
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
