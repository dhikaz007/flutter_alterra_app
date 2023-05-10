import 'package:flutter/material.dart';

import '../../../../../../utils/alta_constant.dart';
import '../../../../../../utils/alta_widgets.dart';

class OutputImmersive extends StatelessWidget {
  final String title;
  final String subtitle;
  const OutputImmersive({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AltaText(
          context: context,
          text: title,
          style: AltaTextStyle.title1,
          fontWeight: CustomFontWeight.bold,
          color: AltaColor.darkBlue,
          textAlign: TextAlign.center,
        ),
        AltaText(
          context: context,
          text: subtitle,
          style: AltaTextStyle.body2,
          fontWeight: CustomFontWeight.semiBold,
          color: AltaColor.darkBlue,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
