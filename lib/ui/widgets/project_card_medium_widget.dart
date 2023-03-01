import 'package:flutter/material.dart';
import 'package:yuno/api/project/models.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/widgets/avatar_stacked.dart';
import 'package:yuno/utils/random_avatar.dart';

class ProjectCardMediumWidget extends StatelessWidget {
  const ProjectCardMediumWidget({
    required this.project,
    super.key,
  });

  final IProjectWithUsers project;

  @override
  Widget build(BuildContext context) {
    final urlImages = <String>[];
    project.users?.forEach((user) {
      // urlImages.add(user.image?.media.link ?? '');
      urlImages.add(RandomAvatar().getAvatars(user.id));
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
                    const SizedBox(height: 8),
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
