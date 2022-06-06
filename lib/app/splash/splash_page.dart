import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yuno/utils/colors.dart';
import 'package:yuno/utils/images.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late Timer timer;
  late double _deviceHeight;
  late double _deviceWidth;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) => loadData(context: context),
    );
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: _deviceWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: 94),
                Image.asset(logo, width: 70, height: 70),
                const Text(
                  'yuno.',
                  style: TextStyle(
                    color: primaryTextColor,
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: _deviceHeight * 0.4),
                const CircularProgressIndicator(color: primaryColor),
                const SizedBox(height: 20),
                const Text(
                  'The Coolest Task Manager App',
                  style: TextStyle(
                    color: primaryTextColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: _deviceHeight * 0.2),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(bottomOrnament),
          ),
        ],
      ),
    );
  }

  Future<void> loadData({required BuildContext context}) async {
    timer = Timer(
      const Duration(seconds: 2),
      () => Navigator.pushNamedAndRemoveUntil(
          context, '/counter', (route) => false),
    );
  }
}
