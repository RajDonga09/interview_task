import 'package:flutter/material.dart';
import 'package:interview_task/core/app_navigator.dart';
import 'package:interview_task/modules/animal/presentation/pages/animal_details_screen.dart';
import 'package:interview_task/modules/exercise/presentation/pages/exercise_main_screen.dart';
import 'package:interview_task/widget/dynamic_view/common_app_text.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          demoItemView(
            title: 'Api calling demo',
            onTap: () {
              AppNavigator.push(context, const AnimalsDetailsScreen());
            },
          ),
          demoItemView(
            title: 'SharedPreferences demo',
            onTap: () {
              AppNavigator.push(context, const ExerciseMainScreen());
            },
          ),
        ],
      ),
    );
  }

  Widget demoItemView({required String title, GestureTapCallback? onTap}) {
    return ListTile(
      onTap: onTap,
      title: AppText(
        text: title,
      ),
    );
  }
}
