// Taken as a basis from this package
// https://pub.dev/packages/date_picker_timeline_fixed

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:yuno/resources/resources.dart';

/// Signature for a function that detects when a tap is occurred.
///
/// Used by [DatePickerTimeline] for tap detection.
typedef DateSelectionCallback = void Function(DateTime selectedDate);

/// Signature for a function that is called when selected date is changed
///
/// Used by [DatePickerTimeline] for tap detection.
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
  DateTime? _currentDate;
  DateTime? _selectedDate;

  ScrollController _controller = ScrollController();

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
    return Container(
      height: 98,
      child: ListView.builder(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: widget.itemCount + 2,
        itemBuilder: (context, index) {
          if (index == 0 || index == widget.itemCount + 1) {
            return SizedBox(width: 14);
          }
          DateTime date;
          DateTime _date = _currentDate!.add(Duration(days: index - 1));
          date = DateTime(_date.year, _date.month, _date.day);

          // Check if this date is the one that is currently selected
          bool isSelected = _selectedDate != null ? _compareDate(date, _selectedDate!) : false;

          TextStyle dayTextStyle = isSelected ? AppTypography.l14l : AppTypography.l14d;
          TextStyle dateTextStyle = isSelected ? AppTypography.r24l : AppTypography.r24d;
          Color selectionColor = isSelected ? AppColors.secondary100 : AppColors.white100;

          return DateWidget(
            width: 62,
            date: date,
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
  final double? width;
  final DateTime date;
  final TextStyle? dayTextStyle, dateTextStyle;
  final Color selectionColor;
  final DateSelectionCallback? onDateSelected;
  final String? locale;

  DateWidget({
    required this.date,
    required this.dayTextStyle,
    required this.dateTextStyle,
    required this.selectionColor,
    this.width,
    this.onDateSelected,
    this.locale,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: selectionColor,
      ),
      child: InkWell(
        onTap: () {
          // Check if onDateSelected is not null
          if (onDateSelected != null) {
            // Call the onDateSelected Function
            onDateSelected!(this.date);
          }
        },
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                date.day.toString(), // Date
                style: dateTextStyle,
              ),
              Text(
                DateFormat("E", locale).format(date), // WeekDay
                style: dayTextStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
