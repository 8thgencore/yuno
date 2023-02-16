import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:intl/intl.dart';
import 'package:yuno/app/helpers/remove_scrolling_glow.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/main/calendar/bloc/calendar_bloc.dart';
import 'package:yuno/ui/widgets/error_container.dart';
import 'package:yuno/ui/widgets/loading_container.dart';
import 'package:yuno/ui/widgets/task_card_widget.dart';
import 'package:yuno/ui/widgets/yuno_horizontal_calendar.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screen100,
      body: SafeArea(
        child: _CalendarPageContentWidget(),
      ),
    );
  }
}

class _CalendarPageContentWidget extends StatelessWidget {
  const _CalendarPageContentWidget();

  @override
  Widget build(BuildContext context) {
    return removeScrollingGlow(
      child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            padding: EdgeInsets.only(left: 24, top: 16, right: 24),
            child: BlocBuilder<CalendarBloc, CalendarState>(
              builder: (context, state) => state.maybeWhen(
                loading: () => _HeaderWidget(date: DateTime.now(), taskLength: 0),
                loaded: (date, tasks) => _HeaderWidget(
                  date: date,
                  taskLength: tasks.length,
                ),
                orElse: () => _HeaderWidget(date: DateTime.now(), taskLength: 0),
              ),
            ),
          ),
          SizedBox(height: 26),
          YunoHorizontalCalendarWidget(
            itemCount: 50,
            onDateChange: (selectedDate) =>
                context.read<CalendarBloc>().add(CalendarEvent.selectedDate(selectedDate)),
          ),
          SizedBox(height: 32),
          _CheckListBuilderWidget(),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({
    required this.date,
    required this.taskLength,
  });

  final DateTime date;
  final int taskLength;

  @override
  Widget build(BuildContext context) {
    final outputFormat = DateFormat('MMM dd, yyyy');

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          outputFormat.format(date),
          style: AppTypography.b22d,
        ),
        Text(
          '$taskLength Checklist Today',
          style: AppTypography.l14g,
        ),
      ],
    );
  }
}

class _CheckListBuilderWidget extends StatelessWidget {
  const _CheckListBuilderWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarBloc, CalendarState>(
      builder: (context, state) => state.maybeWhen(
        loading: () => LoadingContainer(),
        loaded: (date, tasks) => tasks.isNotEmpty
            ? ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 24),
                itemCount: tasks.length + 1,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Text('Checklist', style: AppTypography.b18d),
                    );
                  }
                  return GestureDetector(
                    onTap: () async {
                      final result = await context.pushNamed<bool>(
                        RouteName.taskEdit,
                        params: {'id': tasks[index - 1].id},
                      );
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        if (result ?? false) {
                          context.read<CalendarBloc>().add(const CalendarEvent.updated());
                        }
                      });
                    },
                    child: TaskCardWidget(
                      id: tasks[index - 1].id,
                      title: tasks[index - 1].name,
                      projectName: tasks[index - 1].projectName,
                      done: tasks[index - 1].done,
                      onClickCheckBox: () => context
                          .read<CalendarBloc>()
                          .add(CalendarEvent.checkedItem(tasks[index - 1].id)),
                      isMember: true,
                    ),
                  );
                },
              )
            : Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 16),
                    Image.asset(Assets.images.checklistEmpty.path),
                    SizedBox(height: 32),
                    Text(
                      'Woops, No Checklist Yet!',
                      textAlign: TextAlign.center,
                      style: AppTypography.b18d,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'No checklist at the moment, feel free to add '
                      'some checklist by pressing Plus button below.',
                      textAlign: TextAlign.center,
                      style: AppTypography.l14g,
                    ),
                  ],
                ),
              ),
        failure: (error) => ErrorContainer(text: '$error'),
        orElse: () => const ErrorContainer(text: 'Tasks list is empty'),
      ),
    );
  }
}
