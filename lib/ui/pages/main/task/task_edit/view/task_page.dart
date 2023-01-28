import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:yuno/app/helpers/remove_scrolling_glow.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/main/task/task_edit/bloc/task_edit_bloc.dart';
import 'package:yuno/ui/widgets/custom_rounded_button.dart';
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
    return BlocListener<TaskEditBloc, TaskEditState>(
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
                text: state.serverError ?? 'Server Error',
                type: ToastType.failure,
              ),
            );
            break;
          case TaskEditStatus.fillingFields:
            break;
          case TaskEditStatus.successUpdated:
            context.loaderOverlay.hide();
            showToast(
              context,
              child: const ToastWidget(
                text: 'Project information has been successfully updated',
                type: ToastType.success,
              ),
            );
            break;
          case TaskEditStatus.successCreated:
            context.loaderOverlay.hide();
            showToast(
              context,
              child: const ToastWidget(
                text: 'The project was successfully created',
                type: ToastType.success,
              ),
            );
            break;
        }
      },
      child: LoaderOverlay(
        child: Scaffold(
          backgroundColor: AppColors.screen100,
          body: SafeArea(child: _CreateTaskContentWidget(isUpdate: isUpdate)),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: CustomRoundedButton(
              textButton: isUpdate ? 'Update' : 'Create task',
              onPressed: () {
                final currentNode = FocusScope.of(context);
                if (currentNode.focusedChild != null && !currentNode.hasPrimaryFocus) {
                  FocusManager.instance.primaryFocus?.unfocus();
                }
                isUpdate
                    ? context.read<TaskEditBloc>().add(const TaskEditEvent.updated())
                    : context.read<TaskEditBloc>().add(const TaskEditEvent.saved());
              },
              textColor: AppColors.white100,
              buttonColor: AppColors.primary100,
            ),
          ),
        ),
      ),
    );
  }
}

class _CreateTaskContentWidget extends StatelessWidget {
  const _CreateTaskContentWidget({required this.isUpdate});

  final bool isUpdate;

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
                onTap: () => context.pop(),
                child: Assets.svg.backArrow.svg(),
              ),
              const SizedBox(height: 12),
              Text(
                isUpdate ? 'Update task' : 'Create new task',
                style: AppTypography.b18d,
              ),
            ],
          ),
        ),
        Expanded(
          child: removeScrollingGlow(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              decoration: const BoxDecoration(
                color: AppColors.white60,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
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

class _TaskNameTextField extends StatelessWidget {
  const _TaskNameTextField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskEditBloc, TaskEditState>(
      buildWhen: (_, current) => current.status == TaskEditStatus.loaded,
      builder: (context, state) {
        return CustomTextField(
          controller: TextEditingController(text: state.name),
          labelText: 'Task Name',
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
  Widget build(BuildContext context) {
    return BlocBuilder<TaskEditBloc, TaskEditState>(
      buildWhen: (_, current) => current.status == TaskEditStatus.loaded,
      builder: (context, state) {
        if (_controller.text == '') {
          final text = state.deadline ?? '';
          _controller.text = text.replaceAll('T', ' ');
        }
        return CustomTextField(
          controller: _controller,
          readOnly: true,
          labelText: 'Deadline',
          textColor: AppColors.dark100,
          onPressedFunction: () => _selectDate(context),
          onChanged: (text) => context.read<TaskEditBloc>().add(
                TaskEditEvent.deadlineChanged(text),
              ),
        );
      },
    );
  }

  // Function to show the date picker and return the selected date
  Future<void> _selectDate(BuildContext context) async {
    final datePicked = await DatePicker.showDateTimePicker(
      context,
      currentTime: DateTime.now(),
      onConfirm: (date) {
        context.read<TaskEditBloc>().add(TaskEditEvent.deadlineChanged('$date'));
      },
    );
    if (datePicked != null) {
      setState(() {
        _controller.text = datePicked.toString().replaceAll('T', ' ').split('.').first;
      });
    }
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
        Text('Completed', style: AppTypography.r14d),
        BlocBuilder<TaskEditBloc, TaskEditState>(
          buildWhen: (_, current) => current.status == TaskEditStatus.loaded,
          builder: (context, state) {
            _isDone ??= state.done;
            return CupertinoSwitch(
              value: _isDone ?? false,
              activeColor: AppColors.primary100,
              onChanged: (value) {
                context.read<TaskEditBloc>().add(TaskEditEvent.clickSwitch(value));
                setState(() => _isDone = value);
              },
            );
          },
        ),
      ],
    );
  }
}