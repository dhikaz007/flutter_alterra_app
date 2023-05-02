import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../alta_constants.dart';
import 'alta_text.dart';

class AltaProfileComponent extends StatelessWidget {
  final String text;
  final AltaTextStyle style;
  final String iconArrowBlue;
  final VoidCallback? onTap;
  const AltaProfileComponent(
      {super.key,
      required this.text,
      required this.style,
      required this.iconArrowBlue,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AltaText(
          context: context,
          text: text,
          style: style,
          color: AltaColor.darkBlue,
          fontWeight: CustomFontWeight.semiBold,
        ),
        InkWell(
          onTap: onTap,
          child: SvgPicture.asset(iconArrowBlue),
        ),
      ],
    );
  }
}
