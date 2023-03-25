import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:yuno/app/logger.dart';

class GoRouterObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (kDebugMode) {
      l.info('[GoRouter] didPush: $route');
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (kDebugMode) {
      l.info('[GoRouter] didPop: $route');
    }
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (kDebugMode) {
      l.info('[GoRouter] didRemove: $route');
    }
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    if (kDebugMode) {
      l.info('[GoRouter] didReplace: $newRoute');
    }
  }
}
