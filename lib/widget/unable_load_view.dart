import 'package:flutter/material.dart';
import 'package:interview_task/core/app_strings.dart';

class UnableLoadView extends StatelessWidget {
  final Color? color;

  const UnableLoadView({this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.error_outline,
          color: color ?? Colors.grey,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          AppString.unableToLoad,
          style: TextStyle(
            color: color ?? Colors.grey,
          ),
        )
      ],
    );
  }
}
