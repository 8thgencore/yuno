import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:yuno/resources/resources.dart';

class LinearPercentIndicatorWidget extends StatelessWidget {
  const LinearPercentIndicatorWidget({
    required this.percent,
    super.key,
  });

  final double percent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.white100,
      ),
      child: Row(
        children: [
          LinearPercentIndicator(
            width: MediaQuery.sizeOf(context).width - 140,
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
