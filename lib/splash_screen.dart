import 'dart:async';

import 'package:flutter/material.dart';
import 'package:interview_task/core/core.dart';
import 'package:interview_task/modules/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? timeOutTimer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    timeOut();
    super.dispose();
  }

  void startTimer() {
    if (timeOutTimer?.isActive ?? false) timeOut();
    timeOutTimer = Timer.periodic(const Duration(seconds: 3), (timer) async {
      await AppNavigator.pushReplacement(context, const MainScreen());
    });
  }

  void timeOut() {
    timeOutTimer?.cancel();
    timeOutTimer = null;
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.lightBackColor,
      body: Center(
        child: Text(
          AppString.appName,
          style: TextStyle(color: AppColors.whiteColor, fontSize: 20),
        ),
      ),
    );
  }
}
