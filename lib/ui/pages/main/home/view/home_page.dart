import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/widgets/avatar_stacked.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Scaffold(
        backgroundColor: AppColors.screen100,
        body: _HomeContentWidget(),
      ),
    );
  }
}

class _HomeContentWidget extends StatelessWidget {
  const _HomeContentWidget();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          _TopCardWidget(),
          SizedBox(height: 18),
          _ProjectsListWidget(),
          SizedBox(height: 36),
          _CheckListWidget(),
          SizedBox(height: 18),
        ],
      ),
    );
  }
}

class _TopCardWidget extends StatelessWidget {
  const _TopCardWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 245,
      decoration: BoxDecoration(
        color: AppColors.primary100,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          Assets.svg.homeTopOrnament.svg(
            width: double.infinity,
            color: AppColors.white40,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 30),
              Text(
                'Hi, Jonathan!',
                style: AppTypography.b18l,
              ),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: AppColors.dark100,
                ),
                child: Text(
                  '6 Active Task',
                  style: AppTypography.l18l,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(14),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: AppColors.white100,
                ),
                child: Row(
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Canoz Homescreen Update',
                            style: AppTypography.b16d,
                            overflow: TextOverflow.fade,
                            softWrap: false,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Today, 4:00 PM',
                            style: AppTypography.l12g,
                            overflow: TextOverflow.fade,
                            softWrap: false,
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios, color: AppColors.grey80),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class _ProjectsListWidget extends StatelessWidget {
  const _ProjectsListWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Projects', style: AppTypography.b18d),
              Text('View All', style: AppTypography.r14d.copyWith(color: AppColors.primary100)),
            ],
          ),
        ),
        const SizedBox(height: 18),
        SizedBox(
          height: 164,
          child: ListView.builder(
            // key: GlobalKey(),
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              return const _ProjectCardWidget();
            },
          ),
        ),
      ],
    );
  }
}

class _ProjectCardWidget extends StatelessWidget {
  const _ProjectCardWidget();

  @override
  Widget build(BuildContext context) {
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 160,
                        child: Text(
                          'Rando Mobile Ap22222',
                          style: AppTypography.b16d,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                        ),
                      ),
                      Text(
                        'Mobile App Redesign',
                        style: AppTypography.l12g,
                        overflow: TextOverflow.fade,
                        softWrap: false,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 16),
              const AvatarStacked(
                urlImages: [
                  'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80',
                  'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
                  'https://images.unsplash.com/photo-1616766098956-c81f12114571?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
                ],
              ),
            ],
          ),
        ),
        const Positioned(
          left: 24,
          bottom: 0,
          child: LinearPercentIndicatorWidget(percent: 0.62),
        ),
      ],
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

class _CheckListWidget extends StatelessWidget {
  const _CheckListWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text('Checklist', style: AppTypography.b18d),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 80,
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
              decoration: BoxDecoration(
                color: AppColors.white100,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Icon Design',
                          style: AppTypography.b16d,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'Canoz Mobile App',
                          style: AppTypography.l12g,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                        ),
                      ],
                    ),
                  ),
                  Checkbox(
                    value: true,
                    onChanged: (b) {},
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
