// Taken as a basis from this package
// https://pub.dev/packages/date_picker_timeline_fixed

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:yuno/resources/resources.dart';

/// Signature for a function that detects when a tap is occurred.
///
/// Used by [DateSelectionCallback] for tap detection.
typedef DateSelectionCallback = void Function(DateTime selectedDate);

/// Signature for a function that is called when selected date is changed
///
/// Used by [DateChangeListener] for tap detection.
typedef DateChangeListener = void Function(DateTime selectedDate);

class YunoHorizontalCalendarWidget extends StatefulWidget {
  const YunoHorizontalCalendarWidget({
    this.itemCount = 50,
    this.onDateChange,
    super.key,
  });

  final int itemCount;
  final DateChangeListener? onDateChange;

  @override
  State<YunoHorizontalCalendarWidget> createState() => _YunoHorizontalCalendarWidgetState();
}

class _YunoHorizontalCalendarWidgetState extends State<YunoHorizontalCalendarWidget> {
  final ScrollController _controller = ScrollController();

  late DateTime _currentDate;
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    // Init the calendar locale
    // initializeDateFormatting(widget.locale, null);

    // Set initial Values
    _currentDate = DateTime.now();
    _selectedDate = DateTime.now();

    // if (widget.controller != null) {
    //   widget.controller!.setDatePickerState(this);
    // }
    //
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 98,
      child: ListView.builder(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: widget.itemCount + 2,
        itemBuilder: (context, index) {
          if (index == 0 || index == widget.itemCount + 1) {
            return const SizedBox(width: 14);
          }
          DateTime dateRounded;
          final date = _currentDate.add(Duration(days: index - 1));
          dateRounded = DateTime(date.year, date.month, date.day);

          // Check if this date is the one that is currently selected
          final isSelected = _compareDate(dateRounded, _selectedDate);

          final dayTextStyle = isSelected ? AppTypography.l14l : AppTypography.l14d;
          final dateTextStyle = isSelected ? AppTypography.r24l : AppTypography.r24d;
          final selectionColor = isSelected ? AppColors.secondary100 : AppColors.white100;

          return DateWidget(
            width: 62,
            date: dateRounded,
            dayTextStyle: dayTextStyle,
            dateTextStyle: dateTextStyle,
            selectionColor: selectionColor,
            onDateSelected: (selectedDate) {
              // A date is selected
              if (widget.onDateChange != null && _selectedDate != selectedDate) {
                widget.onDateChange!(selectedDate);
              }
              setState(() => _selectedDate = selectedDate);
            },
          );
        },
      ),
    );
  }

  /// Helper function to compare two dates
  /// Returns True if both dates are the same
  bool _compareDate(DateTime date1, DateTime date2) {
    return date1.day == date2.day && date1.month == date2.month && date1.year == date2.year;
  }
}

class DateWidget extends StatelessWidget {
  const DateWidget({
    required this.date,
    required this.dayTextStyle,
    required this.dateTextStyle,
    required this.selectionColor,
    this.width,
    this.onDateSelected,
    this.locale,
    super.key,
  });

  final double? width;
  final DateTime date;
  final TextStyle? dayTextStyle;
  final TextStyle? dateTextStyle;
  final Color selectionColor;
  final DateSelectionCallback? onDateSelected;
  final String? locale;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: selectionColor,
      ),
      child: InkWell(
        onTap: () {
          // Check if onDateSelected is not null
          if (onDateSelected != null) {
            // Call the onDateSelected Function
            onDateSelected!(date);
          }
        },
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                date.day.toString(), // Date
                style: dateTextStyle,
              ),
              Text(
                DateFormat('E', locale).format(date), // WeekDay
                style: dayTextStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
