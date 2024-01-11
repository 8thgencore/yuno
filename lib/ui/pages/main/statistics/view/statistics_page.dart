import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuno/l10n/l10n.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/main/statistics/bloc/statistics_bloc.dart';
import 'package:yuno/ui/widgets/error_container.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screen100,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            children: [
              Text(
                context.l10n.statsPageTitle,
                style: AppTypography.b22d,
              ),
              const Spacer(),
              const _PieChartContainer(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class _PieChartContainer extends StatelessWidget {
  const _PieChartContainer();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 480,
      child: BlocBuilder<StatisticsBloc, StatisticsState>(
        builder: (context, state) => state.maybeMap(
          initial: (_) => const Center(child: CircularProgressIndicator()),
          loading: (_) => const Center(child: CircularProgressIndicator()),
          loaded: (state) {
            final l10n = context.l10n;
            final stats = state.stats;
            if (stats.projectsCount == 0) {
              return Column(
                children: [
                  Assets.images.statisticsEmpty.image(),
                  const SizedBox(height: 24),
                  Text(
                    l10n.statsPageEmptyTitle,
                    style: AppTypography.b18d,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    l10n.statsPageEmptyDesc,
                    style: AppTypography.l14g,
                    textAlign: TextAlign.center,
                  ),
                ],
              );
            }
            return Column(
              children: [
                Container(
                  height: 264,
                  width: 264,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppColors.white100,
                    borderRadius: BorderRadius.circular(132),
                  ),
                  child: PieChart(
                    data: [
                      PieChartData(
                        AppColors.dark100,
                        (stats.missingCount / stats.projectsCount) * 100,
                      ),
                      PieChartData(
                        AppColors.secondary100,
                        (stats.ongoingCount / stats.projectsCount) * 100,
                      ),
                      PieChartData(
                        AppColors.primary100,
                        (stats.completedCount / stats.projectsCount) * 100,
                      ),
                    ],
                    radius: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          stats.projectsCount.toString(),
                          style: AppTypography.b26d,
                        ),
                        Text(
                          l10n.statsPageProjects,
                          style: AppTypography.l16d,
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  height: 50,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  decoration: BoxDecoration(
                    color: AppColors.white100,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _StatsCategory(text: l10n.statsPageDone, color: AppColors.primary100),
                      _StatsCategory(text: l10n.statsPageOngoing, color: AppColors.secondary100),
                      _StatsCategory(text: l10n.statsPageMissed, color: AppColors.dark100),
                    ],
                  ),
                ),
              ],
            );
          },
          failure: (error) => ErrorContainer(
            text: '${context.l10n.errorFailedGetData}\n$error',
          ),
          orElse: () => ErrorContainer(
            text: context.l10n.errorFailedGetData,
          ),
        ),
      ),
    );
  }
}

// this is used to pass data about chart values to the widget
class PieChartData {
  const PieChartData(this.color, this.percent);

  final Color color;
  final double percent;
}

// our pie chart widget
class PieChart extends StatelessWidget {
  PieChart({
    required this.data,
    required this.radius,
    this.strokeWidth = 16,
    this.child,
    super.key,
  }) : assert(
          data.fold<double>(0, (sum, data) => sum + data.percent) <= 100,
          'The total percentage value cannot be more than 100',
        );

  final List<PieChartData> data;
  final double radius;
  final double strokeWidth;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _Painter(strokeWidth, data),
      size: Size.square(radius),
      child: SizedBox.square(
        // calc diameter
        dimension: radius * 1,
        child: Center(
          child: child,
        ),
      ),
    );
  }
}

// responsible for painting our chart
class _PainterData {
  const _PainterData({
    required this.paint,
    required this.radians,
    required this.labelContainerPaint,
    required this.label,
  });

  final Paint paint;
  final double radians;
  final Paint labelContainerPaint;
  final String label;
}

class _Painter extends CustomPainter {
  _Painter(double strokeWidth, List<PieChartData> data) {
    // convert chart data to painter data
    dataList = data
        .map(
          (e) => _PainterData(
            paint: Paint()
              ..color = e.color
              ..style = PaintingStyle.stroke
              ..strokeWidth = strokeWidth
              ..strokeCap = StrokeCap.round,
            // remove padding from stroke
            radians: (e.percent - _padding) * _percentInRadians,
            labelContainerPaint: Paint()
              ..color = e.color
              ..style = PaintingStyle.fill,
            label: '${e.percent.toInt()}%',
          ),
        )
        .toList();
  }

  static const double pi = 3.1415926535897932;

  static const _percentInRadians = pi / 50;
  static const _padding = 1;
  static const _paddingInRadians = _percentInRadians * _padding;

  // 0 radians is to the right, but since we want to start from the top
  // we'll use -90 degrees in radians
  static const _startAngle = -pi / 2 + _paddingInRadians / 2;

  late final List<_PainterData> dataList;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    // keep track of start angle for next stroke
    var startAngle = _startAngle;

    // width white round minus padding
    const width = 264.0 - 20 * 2;
    const radius = width / 2;

    var radiansCounter = 0.0;
    for (final data in dataList) {
      // painting pie
      final path = Path()..addArc(rect, startAngle, data.radians);
      startAngle += data.radians + _paddingInRadians;
      canvas.drawPath(path, data.paint);

      // calculate label position
      final currentF = (radiansCounter + (data.radians / 2) + 2 * pi - pi / 2) % (2 * pi);
      final x = radius + radius * cos(currentF);
      final y = radius + radius * sin(currentF);

      // painting label container
      drawContainer(canvas, Offset(x, y), data.labelContainerPaint);

      // painting label
      drawText(canvas, Offset(x - 48 / 4, y - 32 / 4), width, data.label);

      radiansCounter += data.radians;
    }
  }

  void drawContainer(Canvas canvas, Offset position, Paint paint) {
    final labelContainerPath = RRect.fromRectAndRadius(
      Rect.fromCenter(center: position, width: 48, height: 32),
      const Radius.circular(16),
    );
    canvas.drawRRect(labelContainerPath, paint);
  }

  void drawText(Canvas canvas, Offset position, double width, String text) {
    final textSpan = TextSpan(text: text, style: AppTypography.r13l);
    TextPainter(text: textSpan, textDirection: TextDirection.ltr)
      ..layout(maxWidth: width)
      ..paint(canvas, position);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

class _StatsCategory extends StatelessWidget {
  const _StatsCategory({
    required this.text,
    required this.color,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: color,
          ),
        ),
        const SizedBox(width: 8),
        Text(text, style: AppTypography.l14d),
      ],
    );
  }
}
