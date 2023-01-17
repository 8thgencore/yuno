import 'package:flutter/material.dart';
import 'package:yuno/resources/resources.dart';

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
  const _HomeContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          _TopCardWidget(),
          SizedBox(height: 18),
          _ProjectsListWidget(),
          SizedBox(height: 10),
          _CheckListWidget(),
          SizedBox(height: 18),
        ],
      ),
    );
  }
}

class _TopCardWidget extends StatelessWidget {
  const _TopCardWidget({
    super.key,
  });

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
              )
            ],
          )
        ],
      ),
    );
  }
}

class _ProjectsListWidget extends StatelessWidget {
  const _ProjectsListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> listItems = <String>['Item1', 'Item2', 'Item3', 'Item4', 'Item5'];
    final List<int> colorCodes = <int>[600, 500, 400, 300, 100];
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
        Container(
          height: 164,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            itemCount: listItems.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 160,
                margin: const EdgeInsets.symmetric(horizontal: 12),
                color: Colors.pink[colorCodes[index]],
                child: Center(child: Text(listItems[index])),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _CheckListWidget extends StatelessWidget {
  const _CheckListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> listItems = <String>['Item1', 'Item2', 'Item3', 'Item4', 'Item5'];
    final List<int> colorCodes = <int>[600, 500, 400, 300, 100];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text('Checklist', style: AppTypography.b18d),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
          itemCount: listItems.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              key: GlobalObjectKey(listItems[index]),
              height: 80,
              margin: const EdgeInsets.symmetric(vertical: 10),
              color: Colors.pink[colorCodes[index]],
              child: Center(
                child: Text(listItems[index]),
              ),
            );
          },
        ),
      ],
    );
  }
}
