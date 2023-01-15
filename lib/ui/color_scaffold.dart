import 'package:flutter/material.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:yuno/app/routes/routes.dart';

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
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          if (index == selectedIndex && context.canPop()) {
            context.pop();
            return;
          }
          final routeName = () {
            if (index == 0) {
              return RouteName.profile;
            }
            if (index == 1) {
              return RouteName.profile;
            }
            return RouteName.profile;
          }();

          context.goNamed(routeName);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.reddit,
              color: Colors.red,
            ),
            label: 'Red',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.reddit,
              color: Colors.green,
            ),
            label: 'Green',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.reddit,
              color: Colors.blue,
            ),
            label: 'Blue',
          ),
        ],
      ),
    );
  }
}
