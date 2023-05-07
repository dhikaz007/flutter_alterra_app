import 'package:flutter/material.dart';

enum AltaTextStyle {
  none,
  headline1,
  headline2,
  title1,
  title2,
  title3,
  body1,
  body2,
  body3,
  hyperlinkText
}

enum CustomFontWeight {
  thin,
  extraLight,
  light,
  normal,
  medium,
  semiBold,
  bold,
  extraBold,
  veryBold
}

extension FontWeightIndicator on CustomFontWeight {
  FontWeight get valueFontWeight {
    switch (this) {
      case CustomFontWeight.thin:
        return FontWeight.w100;

      case CustomFontWeight.extraLight:
        return FontWeight.w200;
      case CustomFontWeight.light:
        return FontWeight.w300;
      case CustomFontWeight.normal:
        return FontWeight.w400;
      case CustomFontWeight.medium:
        return FontWeight.w500;
      case CustomFontWeight.semiBold:
        return FontWeight.w600;
      case CustomFontWeight.bold:
        return FontWeight.w700;
      case CustomFontWeight.extraBold:
        return FontWeight.w800;
      case CustomFontWeight.veryBold:
        return FontWeight.w900;
    }
  }
}

class AltaText extends StatelessWidget {
  final String text;
  final BuildContext context;
  final AltaTextStyle style;
  final CustomFontWeight fontWeight;
  final TextAlign? textAlign;
  final Color color;
  const AltaText({
    super.key,
    required this.context,
    required this.text,
    required this.style,
    required this.fontWeight,
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
        case AltaTextStyle.headline1:
          return TextStyle(
            color: color,
            fontWeight: fontWeight.valueFontWeight,
            fontSize: 28,
          );
        case AltaTextStyle.headline2:
          return TextStyle(
            color: color,
            fontWeight: fontWeight.valueFontWeight,
            fontSize: 24,
          );
        case AltaTextStyle.title1:
          return TextStyle(
            color: color,
            fontWeight: fontWeight.valueFontWeight,
            fontSize: 20,
          );
        case AltaTextStyle.title2:
          return TextStyle(
            color: color,
            fontWeight: fontWeight.valueFontWeight,
            fontSize: 18,
          );
        case AltaTextStyle.title3:
          return TextStyle(
            color: color,
            fontWeight: fontWeight.valueFontWeight,
            fontSize: 16,
          );
        case AltaTextStyle.body1:
          return TextStyle(
            color: color,
            fontWeight: fontWeight.valueFontWeight,
            fontSize: 14,
          );
        case AltaTextStyle.body2:
          return TextStyle(
            color: color,
            fontWeight: fontWeight.valueFontWeight,
            fontSize: 12,
          );
        case AltaTextStyle.body3:
          return TextStyle(
            color: color,
            fontWeight: fontWeight.valueFontWeight,
            fontSize: 10,
          );
        case AltaTextStyle.hyperlinkText:
          return TextStyle(
            color: color,
            fontWeight: fontWeight.valueFontWeight,
            fontSize: 16,
            decoration: TextDecoration.underline,
          );
      }
    }

    return Text(text, style: getAltaTextStyle(), textAlign: textAlign);
  }
}
