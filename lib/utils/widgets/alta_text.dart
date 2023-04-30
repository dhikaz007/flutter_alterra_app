import 'package:flutter/material.dart';

enum AltaTextStyle {
  none,
  headlineH1a,
  headlineH1,
  headlineH2,
  titleH1,
  titleH2,
  titleH3,
  bodyH1,
  bodyH2,
  bodyH3,
  bodyH4
}

class AltaText extends StatelessWidget {
  final String text;
  final BuildContext context;
  final AltaTextStyle style;
  final TextAlign? textAlign;
  final Color color;
  const AltaText({
    super.key,
    required this.context,
    required this.text,
    required this.style,
    this.textAlign,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle? getAltaTextStyle() {
      switch (style) {
        case AltaTextStyle.none:
          return Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.white,
              );
        case AltaTextStyle.headlineH1a:
          return TextStyle(
            color: color,
            fontWeight: FontWeight.w600,
            fontSize: 26,
          );
        case AltaTextStyle.headlineH1:
          return TextStyle(
            color: color,
            fontWeight: FontWeight.w600,
            fontSize: 24,
          );
        case AltaTextStyle.headlineH2:
          return TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          );
        case AltaTextStyle.titleH1:
          return TextStyle(
            color: color,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          );
        case AltaTextStyle.titleH2:
          return TextStyle(
            color: color,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          );
        case AltaTextStyle.titleH3:
          return TextStyle(
            color: color,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          );
        case AltaTextStyle.bodyH1:
          return TextStyle(
            color: color,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          );
        case AltaTextStyle.bodyH2:
          return TextStyle(
            color: color,
            fontWeight: FontWeight.normal,
            fontSize: 12,
          );
        case AltaTextStyle.bodyH3:
          return TextStyle(
            color: color,
            fontWeight: FontWeight.w500,
            fontSize: 10,
          );
        case AltaTextStyle.bodyH4:
          return TextStyle(
            color: color,
            fontWeight: FontWeight.w400,
            fontSize: 10,
          );
      }
    }

    return Text(text, style: getAltaTextStyle(), textAlign: textAlign);
  }
}
