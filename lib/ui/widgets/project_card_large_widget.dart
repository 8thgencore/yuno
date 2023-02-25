import 'package:flutter/material.dart';
import 'package:yuno/api/project/models.dart';
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
    final urlImages = <String>[];
    project.users?.forEach((user) {
      urlImages.add(user.image?.media.link ?? '');
    });

    return Container(
      height: 142,
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
                height: 90,
                width: 4,
                decoration: BoxDecoration(
                  color: AppColors.secondary100,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      project.name,
                      style: AppTypography.b22d,
                      overflow: TextOverflow.fade,
                      softWrap: false,
                    ),
                    Text(
                      project.description,
                      style: AppTypography.r14d,
                      overflow: TextOverflow.fade,
                      softWrap: false,
                    ),
                    const SizedBox(height: 6),
                    if (urlImages.isNotEmpty)
                      AvatarStacked(urlImages: urlImages)
                    else
                      const SizedBox(height: 32),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
