import 'package:flutter/material.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/widgets/yuno_horizontal_calendar.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screen100,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 24, top: 16, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'April 7, 2021',
                    style: AppTypography.b22d,
                  ),
                  Text(
                    '5 Checklist Today',
                    style: AppTypography.l14g,
                  ),
                ],
              ),
            ),
            SizedBox(height: 26),
            YunoHorizontalCalendarWidget(itemCount: 50),
            SizedBox(height: 32),
            Text(
              'Checklist',
              style: AppTypography.b22d,
            ),
          ],
        ),
      ),
    );
  }
}
