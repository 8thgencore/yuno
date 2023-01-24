import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:yuno/api/project/models/i_project_with_users.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/widgets/avatar_stacked.dart';

class ProjectCardLargeWidget extends StatelessWidget {
  const ProjectCardLargeWidget({
    required this.project,
    super.key,
  });

  final IProjectWithUsers project;

  @override
  Widget build(BuildContext context) {
    final List<String> urlImages = [];
    project.users?.forEach((user) {
      urlImages.add(user.image?.media.link ?? '');
    });
    return Container(
      height: 122,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      decoration: BoxDecoration(
        color: AppColors.white100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 74,
                width: 4,
                decoration: BoxDecoration(
                  color: AppColors.secondary100,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 160,
                    child: Text(
                      project.name,
                      style: AppTypography.b22d,
                      overflow: TextOverflow.fade,
                      softWrap: false,
                    ),
                  ),
                  const SizedBox(height: 8),
                  AvatarStacked(urlImages: urlImages),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class LinearPercentIndicatorWidget extends StatelessWidget {
  const LinearPercentIndicatorWidget({
    super.key,
    required this.percent,
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
            width: MediaQuery.of(context).size.width - 140,
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
