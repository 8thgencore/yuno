import 'package:flutter/material.dart';

Widget removeScrollingGlow({required Widget child}) =>
    NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowIndicator();
        return true;
      },
      child: child,
    );

Widget removeScrollingGlowSingleChild({required Widget child}) =>
    NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowIndicator();
        return true;
      },
      child: SingleChildScrollView(child: child),
    );
