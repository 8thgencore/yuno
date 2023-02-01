import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:yuno/api/task/models/i_task_read.dart';
import 'package:yuno/resources/resources.dart';

class TaskCardWidget extends StatefulWidget {
  const TaskCardWidget({
    required this.task,
    this.onClickCheckBox,
    this.onDismissible,
    this.isMember = false,
    super.key,
  });

  final ITaskRead task;
  final VoidCallback? onClickCheckBox;
  final VoidCallback? onDismissible;
  final bool isMember;

  @override
  State<TaskCardWidget> createState() => _TaskCardWidgetState();
}

class _TaskCardWidgetState extends State<TaskCardWidget> {
  late bool value;

  @override
  void initState() {
    super.initState();
    value = widget.task.done ?? false;
  }

  @override
  Widget build(BuildContext context) {
    var deadline = '';
    if (widget.task != null) {
      if (widget.task.deadline != null) {
        final outputFormat = DateFormat('dd MMMM yyyy, HH:mm');
        deadline = outputFormat.format(widget.task.deadline!);
      }
    }

    return Dismissible(
      key: ValueKey(widget.task.id),
      direction: widget.isMember ? DismissDirection.startToEnd : DismissDirection.none,
      confirmDismiss: (DismissDirection dismissDirection) async {
        if (dismissDirection == DismissDirection.startToEnd) {
          if (widget.onDismissible != null) {
            widget.onDismissible!();
          }
          return true;
        }
        return false;
      },
      background: Container(
        height: 80,
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        decoration: BoxDecoration(
          color: AppColors.error100,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Icon(
          Icons.delete_outline,
          color: AppColors.white100,
          size: 28,
        ),
      ),
      child: Container(
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
                    // 'Project name',
                    deadline,
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
                  onChanged: (b) {
                    if (widget.onClickCheckBox != null) {
                      widget.onClickCheckBox!();
                    }
                    setState(() {
                      value = !value;
                    });
                  },
                ),
              )
            else
              const SizedBox(),
          ],
        ),
      ),
    );
  }
}
