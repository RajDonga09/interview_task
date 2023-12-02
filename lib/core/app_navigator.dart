import 'package:flutter/material.dart';

class AppNavigator {
  AppNavigator._();

  /// Define the navigation routes

  static Future<void> push(
    BuildContext context,
    Widget screen,
  ) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  static Future<void> pushReplacement(
    BuildContext context,
    Widget screen,
  ) async {
    await Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  static void pop(BuildContext context) {
    Navigator.pop(context);
  }
}
