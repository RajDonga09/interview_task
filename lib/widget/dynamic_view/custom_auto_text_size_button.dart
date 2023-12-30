import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomAutoTextSizeButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final Color? bgColor;
  final String icon;
  final double iconSize;
  final double? height;
  final double? width;
  final double? fontSize;

  const CustomAutoTextSizeButton(
      {required this.onTap,
      required this.text,
      this.icon = '',
      this.bgColor,
      this.iconSize = 25,
      this.height,
      this.width,
      this.fontSize,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: width ?? 200,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          backgroundColor: bgColor ?? Colors.grey,
        ),
        child: icon.isNotEmpty
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: iconSize,
                    width: iconSize,
                    child: Image.asset(icon),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: AutoSizeText(
                      text,
                      style: TextStyle(color: Colors.white, fontSize: fontSize),
                      maxLines: 1,
                      softWrap: true,
                    ),
                  ),
                  SizedBox(height: iconSize, width: iconSize),
                ],
              )
            : Center(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: AutoSizeText(
                      text,
                      maxLines: 3,
                      minFontSize: 12,
                      maxFontSize: 16,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
