import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:yuno/app/helpers/remove_scrolling_glow.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/l10n/l10n.dart';
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
    return const Scaffold(
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
            padding: const EdgeInsets.only(left: 24, top: 16, right: 24),
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
          const SizedBox(height: 26),
          YunoHorizontalCalendarWidget(
            itemCount: 60,
            onDateChange: (selectedDate) =>
                context.read<CalendarBloc>().add(CalendarEvent.selectedDate(selectedDate)),
          ),
          const SizedBox(height: 32),
          const _CheckListBuilderWidget(),
          const SizedBox(height: 24),
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
    final languageCode = Localizations.localeOf(context).languageCode;
    final outputFormat = DateFormat('MMM dd, yyyy', languageCode);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          outputFormat.format(date),
          style: AppTypography.b22d,
        ),
        Text(
          '$taskLength ${context.l10n.calendarPageChecklistToday}',
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
    final l10n = context.l10n;
    return BlocBuilder<CalendarBloc, CalendarState>(
      builder: (context, state) => state.maybeWhen(
        loading: () => const LoadingContainer(),
        loaded: (date, tasks) => tasks.isNotEmpty
            ? ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 24),
                itemCount: tasks.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Text(
                        l10n.checklist,
                        style: AppTypography.b18d,
                      ),
                    );
                  }
                  return GestureDetector(
                    onTap: () async {
                      final result = await context.pushNamed<bool>(
                        RouteName.taskEdit,
                        pathParameters: {'id': tasks[index - 1].id},
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
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    Image.asset(Assets.images.checklistEmpty.path),
                    const SizedBox(height: 32),
                    Text(
                      l10n.calendarPageChecklistEmptyTitle,
                      textAlign: TextAlign.center,
                      style: AppTypography.b18d,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      l10n.calendarPageChecklistEmptyDesc,
                      textAlign: TextAlign.center,
                      style: AppTypography.l14g,
                    ),
                  ],
                ),
              ),
        failure: (error) => ErrorContainer(text: '$error'),
        orElse: () => ErrorContainer(text: context.l10n.errorFailedGetData),
      ),
    );
  }
}
