import 'package:flutter/material.dart';

import '../../../../../../utils/constant/alta_color.dart';
import '../../../../../../utils/widgets/alta_text.dart';

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
          style: AltaTextStyle.headlineH2,
          color: AltaColor.darkBlue,
          textAlign: TextAlign.center,
        ),
        AltaText(
          context: context,
          text: subtitle,
          style: AltaTextStyle.bodyH2,
          color: AltaColor.darkBlue,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
