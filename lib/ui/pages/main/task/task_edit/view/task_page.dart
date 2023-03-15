import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:intl/intl.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:yuno/app/helpers/remove_scrolling_glow.dart';
import 'package:yuno/l10n/l10n.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/main/task/task_edit/bloc/task_edit_bloc.dart';
import 'package:yuno/ui/widgets/buttons/custom_rounded_button.dart';
import 'package:yuno/ui/widgets/custom_text_field.dart';
import 'package:yuno/ui/widgets/toast_widget.dart';
import 'package:yuno/utils/toast.dart';

class TaskEditPage extends StatelessWidget {
  const TaskEditPage({
    this.isUpdate = false,
    super.key,
  });

  final bool isUpdate;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocConsumer<TaskEditBloc, TaskEditState>(
      listener: (context, state) {
        switch (state.status) {
          case TaskEditStatus.initial:
            break;
          case TaskEditStatus.loading:
            context.loaderOverlay.show();
            break;
          case TaskEditStatus.loaded:
            context.loaderOverlay.hide();
            break;
          case TaskEditStatus.failure:
            context.loaderOverlay.hide();
            showToast(
              context,
              child: ToastWidget(
                text: state.serverError ?? l10n.errorServerError,
                type: ToastType.failure,
              ),
            );
            break;
          case TaskEditStatus.failureLoaded:
            context.loaderOverlay.hide();
            showToast(
              context,
              child: ToastWidget(
                text: state.serverError ?? l10n.errorServerError,
                type: ToastType.failure,
              ),
            );
            context.pop();
            break;
          case TaskEditStatus.fillingFields:
            context.loaderOverlay.hide();
            break;
          case TaskEditStatus.successUpdated:
            context.loaderOverlay.hide();
            showToast(
              context,
              child: ToastWidget(
                text: l10n.taskEditPageSuccessUpdated,
                type: ToastType.success,
              ),
            );
            context.pop(true);
            break;
          case TaskEditStatus.successCreated:
            context.loaderOverlay.hide();
            showToast(
              context,
              child: ToastWidget(
                text: l10n.taskEditPageSuccessCreated,
                type: ToastType.success,
              ),
            );
            context.pop(true);
            break;
        }
      },
      builder: (context, state) {
        return LoaderOverlay(
          child: Scaffold(
            backgroundColor: AppColors.screen100,
            body: SafeArea(child: _CreateTaskContentWidget(isUpdate: isUpdate)),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: CustomRoundedButton(
                textButton: isUpdate ? l10n.update : l10n.taskEditPageCreate,
                onPressed: state.name.isNotEmpty
                    ? () {
                        final currentNode = FocusScope.of(context);
                        if (currentNode.focusedChild != null && !currentNode.hasPrimaryFocus) {
                          FocusManager.instance.primaryFocus?.unfocus();
                        }
                        isUpdate
                            ? context.read<TaskEditBloc>().add(const TaskEditEvent.updated())
                            : context.read<TaskEditBloc>().add(const TaskEditEvent.saved());
                      }
                    : null,
              ),
            ),
          ),
        );
      },
    );
  }
}

class _CreateTaskContentWidget extends StatelessWidget {
  const _CreateTaskContentWidget({required this.isUpdate});

  final bool isUpdate;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 18, left: 24, right: 24, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => context.pop(),
                child: Assets.svg.backArrow.svg(),
              ),
              const SizedBox(height: 12),
              Text(
                isUpdate ? l10n.taskEditPageUpdateTask : l10n.taskEditPageCreateNewTask,
                style: AppTypography.b18d,
              ),
            ],
          ),
        ),
        removeScrollingGlow(
          child: Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              decoration: const BoxDecoration(
                color: AppColors.white60,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: const SingleChildScrollView(
                child: _ListTextFieldWidget(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ListTextFieldWidget extends StatelessWidget {
  const _ListTextFieldWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 14),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 14),
          child: _TaskNameTextField(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 14),
          child: _TaskDeadlineTextField(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 14, horizontal: 12),
          child: _TaskDoneSwitch(),
        ),
        SizedBox(height: 90),
      ],
    );
  }
}

class _TaskNameTextField extends StatefulWidget {
  const _TaskNameTextField();

  @override
  State<_TaskNameTextField> createState() => _TaskNameTextFieldState();
}

class _TaskNameTextFieldState extends State<_TaskNameTextField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskEditBloc, TaskEditState>(
      buildWhen: (_, current) => current.status == TaskEditStatus.loaded,
      builder: (context, state) {
        _controller.value = TextEditingValue(text: state.name);
        return CustomTextField(
          controller: _controller,
          labelText: context.l10n.taskEditPageTaskName,
          keyboardType: TextInputType.text,
          textColor: AppColors.dark100,
          onChanged: (text) => context.read<TaskEditBloc>().add(
                TaskEditEvent.nameChanged(text),
              ),
        );
      },
    );
  }
}

class _TaskDeadlineTextField extends StatefulWidget {
  const _TaskDeadlineTextField();

  @override
  State<_TaskDeadlineTextField> createState() => _TaskDeadlineTextFieldState();
}

class _TaskDeadlineTextFieldState extends State<_TaskDeadlineTextField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskEditBloc, TaskEditState>(
      buildWhen: (_, current) => current.status == TaskEditStatus.loaded,
      builder: (context, state) {
        if (_controller.text == '') {
          if (state.deadline != null) {
            final languageCode = Localizations.localeOf(context).languageCode;
            final outputFormat = DateFormat('dd MMMM yyyy, HH:mm', languageCode);
            _controller.value = TextEditingValue(text: outputFormat.format(state.deadline!));
          }
        }
        return CustomTextField(
          controller: _controller,
          readOnly: true,
          labelText: context.l10n.taskEditPageTaskDeadline,
          textColor: AppColors.dark100,
          onPressedFunction: () async {
            final datePicked = await DatePicker.showDateTimePicker(
              context,
              currentTime: DateTime.now(),
              onConfirm: (date) {
                context.read<TaskEditBloc>().add(TaskEditEvent.deadlineChanged(date));
              },
            );
            if (datePicked != null) {
              setState(() {
                final languageCode = Localizations.localeOf(context).languageCode;
                final outputFormat = DateFormat('dd MMMM yyyy, HH:mm', languageCode);
                _controller.text = outputFormat.format(datePicked);
              });
            }
          },
        );
      },
    );
  }
}

class _TaskDoneSwitch extends StatefulWidget {
  const _TaskDoneSwitch();

  @override
  State<_TaskDoneSwitch> createState() => _TaskDoneSwitchState();
}

class _TaskDoneSwitchState extends State<_TaskDoneSwitch> {
  bool? _isDone;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(context.l10n.taskEditPageTaskCompleted, style: AppTypography.r14d),
        BlocBuilder<TaskEditBloc, TaskEditState>(
          buildWhen: (_, current) => current.status == TaskEditStatus.loaded,
          builder: (context, state) {
            _isDone ??= state.done;
            return CupertinoSwitch(
              value: _isDone ?? false,
              activeColor: AppColors.primary100,
              onChanged: (value) {
                context.read<TaskEditBloc>().add(TaskEditEvent.clickSwitch(value: value));
                setState(() => _isDone = value);
              },
            );
          },
        ),
      ],
    );
  }
}
