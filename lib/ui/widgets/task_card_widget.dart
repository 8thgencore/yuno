import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:yuno/resources/resources.dart';

class TaskCardWidget extends StatefulWidget {
  const TaskCardWidget({
    required this.id,
    required this.title,
    this.isMember = false,
    this.deadline,
    this.projectName,
    this.done,
    this.onClickCheckBox,
    this.onDismissible,
    super.key,
  }) : assert(
          !(projectName != null && deadline != null),
          'These parameters cannot be null at the same time',
        );

  final String id;
  final String title;
  final bool isMember;
  final DateTime? deadline;
  final String? projectName;
  final bool? done;
  final VoidCallback? onClickCheckBox;
  final VoidCallback? onDismissible;

  @override
  State<TaskCardWidget> createState() => _TaskCardWidgetState();
}

class _TaskCardWidgetState extends State<TaskCardWidget> {
  late bool value;

  @override
  void initState() {
    super.initState();
    value = widget.done ?? false;
  }

  @override
  void didUpdateWidget(TaskCardWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {
      value = widget.done ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var deadline = '';
    if (widget.deadline != null) {
      final languageCode = Localizations.localeOf(context).languageCode;
      final outputFormat = DateFormat('dd MMMM yyyy, HH:mm', languageCode);
      deadline = outputFormat.format(widget.deadline!);
    }
    return Dismissible(
      key: ValueKey(widget.id),
      direction: (widget.isMember && widget.onDismissible != null)
          ? DismissDirection.startToEnd
          : DismissDirection.none,
      confirmDismiss: (dismissDirection) async {
        if (dismissDirection == DismissDirection.startToEnd) {
          if (widget.onDismissible != null) {
            // ignore: prefer_null_aware_method_calls
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
                    widget.title,
                    style: AppTypography.b16d,
                    overflow: TextOverflow.fade,
                    softWrap: false,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    widget.projectName ?? deadline,
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
                  onChanged: (_) {
                    if (widget.onClickCheckBox != null) {
                      // ignore: prefer_null_aware_method_calls
                      widget.onClickCheckBox!();
                    }
                    setState(() => value = !value);
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
