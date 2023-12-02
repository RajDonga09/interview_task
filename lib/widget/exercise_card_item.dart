import 'package:flutter/material.dart';
import 'package:interview_task/core/app_assets.dart';
import 'package:interview_task/core/app_colors.dart';

class ExerciseCardItem extends StatelessWidget {
  final GestureTapCallback onTap;
  final String title;
  final bool isSelected;

  const ExerciseCardItem({
    required this.onTap,
    required this.title,
    this.isSelected = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 150,
          width: 150,
          child: GestureDetector(
            onTap: onTap,
            child: Card(
              child: Stack(
                children: [
                  Image.asset(AppAssets.exerciseImage, fit: BoxFit.contain),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: IgnorePointer(
                      child: Checkbox(
                        checkColor: Colors.white,
                        value: isSelected,
                        shape: const CircleBorder(),
                        onChanged: (bool? value) {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            color: AppColors.whiteColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
