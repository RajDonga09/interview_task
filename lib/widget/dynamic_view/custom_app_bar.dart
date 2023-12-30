import 'package:flutter/material.dart';
import 'package:interview_task/core/app_navigator.dart';
import 'package:interview_task/modules/setting/presentation/pages/setting_screen.dart';
import 'package:interview_task/widget/visibility_widget.dart';

class CustomAppBar extends StatelessWidget {
  final bool isBackButton;
  final bool isSettingButton;
  final VoidCallback? onBackTap;
  final VoidCallback? onSettingTap;
  final bool isDarkTheme;
  final Color? backIconColor;
  final Color? backButtonBGColor;

  const CustomAppBar({
    this.isBackButton = false,
    this.isSettingButton = false,
    this.onBackTap,
    this.onSettingTap,
    this.isDarkTheme = false,
    this.backIconColor,
    this.backButtonBGColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            WidgetVisibility(
              isShow: isBackButton,
              child: GestureDetector(
                onTap: onBackTap ?? () => AppNavigator.pop(context),
                child: Container(
                  margin: const EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: backButtonBGColor ?? Colors.blue,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: backIconColor ?? Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            WidgetVisibility(
              isShow: isSettingButton,
              child: IconButton(
                icon: Icon(Icons.settings, color: isDarkTheme ? Colors.grey : Colors.white),
                onPressed: onSettingTap ??
                    () {
                      AppNavigator.push(context, const SettingScreen());
                    },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
