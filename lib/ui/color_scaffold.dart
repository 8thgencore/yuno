import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/resources/colors.dart';
import 'package:yuno/resources/resources.dart';

class ColorsScaffold extends StatefulWidget {
  const ColorsScaffold({super.key, required this.child});

  final Widget child;

  @override
  State<ColorsScaffold> createState() => _ColorsScaffoldState();
}

class _ColorsScaffoldState extends State<ColorsScaffold> {
  @override
  Widget build(BuildContext context) {
    final selectedIndex = () {
      final location = GoRouter.of(context).location;
      if (location.startsWith(RoutePath.profile)) {
        return 0;
      }
      if (location.startsWith(RoutePath.splash)) {
        return 1;
      }
      return 2;
    }();

    return Scaffold(
      body: widget.child,
      bottomNavigationBar: ConvexAppBar(
        height: 70,
        cornerRadius: 25,
        style: TabStyle.fixedCircle,
        color: AppColors.primary100,
        activeColor: AppColors.primary100,
        backgroundColor: AppColors.white100,
        shadowColor: AppColors.white100,
        items: [
          TabItem(
            activeIcon: Assets.svg.gridFilled.svg(),
            icon: Assets.svg.grid.svg(color: AppColors.dark20),
          ),
          TabItem(
            activeIcon: Assets.svg.calendarFilled.svg(),
            icon: Assets.svg.calendar.svg(color: AppColors.dark20),
          ),
          const TabItem(icon: Icons.add),
          TabItem(
            activeIcon: Assets.svg.statsFilled.svg(),
            icon: Assets.svg.stats.svg(color: AppColors.dark20),
          ),
          TabItem(
            activeIcon: Assets.svg.userFilled.svg(),
            icon: Assets.svg.user.svg(color: AppColors.dark20),
          ),
        ],
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}
