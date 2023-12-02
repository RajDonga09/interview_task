import 'package:flutter/material.dart';
import 'package:interview_task/core/app_strings.dart';
import 'package:interview_task/splash_screen.dart';

class ExerciseApp extends StatelessWidget {
  const ExerciseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.appName,
      home: SplashScreen(),
    );
  }
}
