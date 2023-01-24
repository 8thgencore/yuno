import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:yuno/api/project/models/i_project_with_users.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/widgets/avatar_stacked.dart';

class ProjectCardSmallWidget extends StatelessWidget {
  const ProjectCardSmallWidget({super.key, required this.project});

  final IProjectWithUsers project;

  @override
  Widget build(BuildContext context) {
    final List<String> urlImages = [];
    project.users?.forEach((user) {
      urlImages.add(user.image?.media.link ?? '');
    });

    return Stack(
      children: [
        Container(
          height: 150,
          width: 222,
          margin: const EdgeInsets.symmetric(horizontal: 12),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
            color: AppColors.white80,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 46,
                    width: 4,
                    decoration: BoxDecoration(
                      color: AppColors.secondary100,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          project.name,
                          style: AppTypography.b16d,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                        ),
                        Text(
                          project.description,
                          style: AppTypography.l12g,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16),
              AvatarStacked(urlImages: urlImages),
            ],
          ),
        ),
        const Positioned(
          left: 24,
          bottom: 0,
          child: _LinearPercentIndicatorWidget(percent: 0.62),
        ),
      ],
    );
  }
}

class _LinearPercentIndicatorWidget extends StatelessWidget {
  const _LinearPercentIndicatorWidget({
    required this.percent,
  });

  final double percent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.white100,
      ),
      child: Row(
        children: [
          LinearPercentIndicator(
            // width: MediaQuery.of(context).size.width - 50,
            width: 168,
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
