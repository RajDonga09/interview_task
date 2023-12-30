import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class AppText extends StatelessWidget {
  final String text;
  final String? fontFamily;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;
  final double? height;
  final int? maxLines;
  final TextOverflow? overflow;
  final double? letterSpacing;
  final double? wordSpacing;
  final bool? softWrap;

  const AppText({
    required this.text,
    super.key,
    this.color,
    this.fontWeight,
    this.fontSize,
    this.textAlign,
    this.softWrap,
    this.height,
    this.maxLines,
    this.overflow,
    this.letterSpacing,
    this.wordSpacing,
    this.fontFamily,
  });

  static bool isHtmlText(String text) {
    const pattern = '<[^>]*>|&[^;]+;';
    final regex = RegExp(pattern);
    if (regex.hasMatch(text)) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isHtmlText(text)) {
      return Html(
        data: text,
        style: {
          'body': Style(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            textAlign: textAlign,
            maxLines: maxLines,
          )
        },
      );
    } else {
      return Text(
        text,
        softWrap: softWrap,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
        style: TextStyle(
          fontFamily: fontFamily ?? 'Roboto',
          color: color ?? Colors.grey,
          fontWeight: fontWeight ?? FontWeight.w400,
          fontSize: fontSize,
          height: height,
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
          overflow: overflow,
        ),
      );
    }
  }
}
