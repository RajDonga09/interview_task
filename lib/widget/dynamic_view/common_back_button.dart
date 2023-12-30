import 'package:flutter/material.dart';
import 'package:interview_task/core/app_navigator.dart';

class CommonBackButton extends StatelessWidget {
  const CommonBackButton({
    super.key,
    this.backIcon,
    this.bgColor,
    this.iconColor,
    this.onTap,
  });

  final IconData? backIcon;
  final Color? bgColor;
  final Color? iconColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ??
          () {
            AppNavigator.pop(context);
          },
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: bgColor ?? Colors.black,
        ),
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Center(
            child: Icon(
              backIcon ?? Icons.arrow_back_ios_new,
              color: iconColor ?? Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
