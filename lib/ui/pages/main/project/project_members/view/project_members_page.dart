import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:yuno/api/user/models.dart';
import 'package:yuno/app/helpers/remove_scrolling_glow.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/main/project/project_members/bloc/project_members_bloc.dart';
import 'package:yuno/ui/widgets/error_container.dart';

class ProjectMembersPage extends StatelessWidget {
  const ProjectMembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screen100,
      body: SafeArea(
        child: removeScrollingGlow(
          child: const _ProjectMembersContentWidget(),
        ),
      ),
    );
  }
}

class _ProjectMembersContentWidget extends StatelessWidget {
  const _ProjectMembersContentWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 18, left: 24, right: 24, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => context.pop(),
                child: Assets.svg.backArrow.svg(),
              ),
              const SizedBox(height: 12),
              Text(
                'In This Project',
                style: AppTypography.b18d,
              ),
            ],
          ),
        ),
        const Expanded(child: _MembersListViewWidget()),
      ],
    );
  }
}

class _MembersListViewWidget extends StatelessWidget {
  const _MembersListViewWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectMembersBloc, ProjectMembersState>(
      builder: (context, state) => state.maybeWhen(
        initial: () => const Center(child: CircularProgressIndicator()),
        loading: () => const Center(child: CircularProgressIndicator()),
        loaded: (members) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: members.length,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: _MemberCard(user: members[index]),
              );
            },
          );
        },
        failure: (error) => ErrorContainer(
          text: 'Failed to get a project from the server\n$error',
        ),
        orElse: () => const ErrorContainer(
          text: 'Failed to get a project from the server',
        ),
      ),
    );
  }
}

class _MemberCard extends StatelessWidget {
  const _MemberCard({required this.user});

  final IUserRead user;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: AppColors.white100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: ClipOval(
              child: user.image != null
                  ? CachedNetworkImage(
                      width: 48,
                      height: 48,
                      fit: BoxFit.cover,
                      imageUrl: user.image!.media.link!,
                    )
                  : Assets.images.avatar.image(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.firstName == '' ? user.username : '${user.firstName} ${user.lastName}',
                  style: AppTypography.b16d,
                ),
                Text(
                  user.email,
                  style: AppTypography.l12g,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
