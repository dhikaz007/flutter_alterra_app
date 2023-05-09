import 'package:flutter/material.dart';

import '../../../../../../utils/alta_constants.dart';
import '../../../../../../utils/alta_widgets.dart';

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
        GestureDetector(
          onTap: onTap,
          child: AltaSvg(
            svgPath: iconArrowBlue,
            height: 15,
            width: 8,
          ),
        ),
      ],
    );
  }
}
