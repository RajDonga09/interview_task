import 'package:flutter/material.dart';

class WidgetVisibility extends StatelessWidget {
  final Widget child;
  final bool isShow;

  const WidgetVisibility({required this.child, super.key, this.isShow = false});

  @override
  Widget build(BuildContext context) {
    return isShow ? child : const SizedBox();
  }
}
