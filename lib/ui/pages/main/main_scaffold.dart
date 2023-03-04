import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/resources/resources.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> with TickerProviderStateMixin {
  late final TabController _tabController;
  int _currentIndex = 4;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.index = _currentIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      if (index == 0) {
        _currentIndex = index;
        context.goNamed(RouteName.home);
      } else if (index == 1) {
        _currentIndex = index;
        context.goNamed(RouteName.calendar);
      } else if (index == 2) {
        // ignore: discarded_futures
        context.pushNamed(RouteName.projectCreate);
      } else if (index == 3) {
        _currentIndex = index;
        context.goNamed(RouteName.statistics);
      } else if (index == 4) {
        _currentIndex = index;
        context.goNamed(RouteName.profile);
      }
      _tabController.index = _currentIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: ConvexAppBar(
        controller: _tabController,
        top: -20,
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
            icon: Assets.svg.grid.svg(
              colorFilter: const ColorFilter.mode(AppColors.dark20, BlendMode.srcIn),
            ),
          ),
          TabItem(
            activeIcon: Assets.svg.calendarFilled.svg(),
            icon: Assets.svg.calendar.svg(
              colorFilter: const ColorFilter.mode(AppColors.dark20, BlendMode.srcIn),
            ),
          ),
          const TabItem(icon: Icons.add),
          TabItem(
            activeIcon: Assets.svg.statsFilled.svg(),
            icon: Assets.svg.stats.svg(
              colorFilter: const ColorFilter.mode(AppColors.dark20, BlendMode.srcIn),
            ),
          ),
          TabItem(
            activeIcon: Assets.svg.userFilled.svg(),
            icon: Assets.svg.user.svg(
              colorFilter: const ColorFilter.mode(AppColors.dark20, BlendMode.srcIn),
            ),
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
