import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast(
  BuildContext context, {
  required Widget child,
  ToastGravity gravity = ToastGravity.TOP,
}) {
  late final FToast fToast;
  fToast = FToast();
  fToast.init(context);
  fToast.showToast(
    child: child,
    gravity: gravity,
    toastDuration: const Duration(milliseconds: 1000),
  );
}
