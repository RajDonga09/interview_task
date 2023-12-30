import 'package:flutter/material.dart';
import 'package:interview_task/widget/dynamic_view/common_app_text.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? bgColor;
  final VoidCallback? onTap;

  const CommonButton({
    required this.text,
    super.key,
    this.textColor,
    this.bgColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 55,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          color: bgColor ?? Colors.grey,
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF000000).withOpacity(0.16),
              offset: const Offset(0, 3),
              blurRadius: 6,
            ),
          ],
        ),
        child: Center(
          child: AppText(
            text: text,
            color: textColor ?? Colors.grey,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
