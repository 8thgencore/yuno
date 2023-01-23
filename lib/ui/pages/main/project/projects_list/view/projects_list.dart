import 'package:flutter/material.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:yuno/app/helpers/remove_scrolling_glow.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/widgets/project_card_large_widget.dart';

class ProjectsListPage extends StatelessWidget {
  const ProjectsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.screen100,
      body: const SafeArea(child: _ProjectsListContentWidget()),
    );
  }
}

class _ProjectsListContentWidget extends StatelessWidget {
  const _ProjectsListContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 18, left: 24, right: 24, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => context.pop(true),
                child: Assets.svg.backArrow.svg(),
              ),
              const SizedBox(height: 12),
              Text(
                'Projects List',
                style: AppTypography.b18d,
              ),
            ],
          ),
        ),
        Expanded(
          child: removeScrollingGlow(
            child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: _ProjectListWidget(),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _ProjectListWidget extends StatelessWidget {
  const _ProjectListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: AppColors.white60,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: const [
          ProjectCardLargeWidget(),
          Padding(
            padding: EdgeInsets.all(24),
            child: LinearPercentIndicatorWidget(percent: 0.4),
          ),
        ],
      ),
    );
  }
}
