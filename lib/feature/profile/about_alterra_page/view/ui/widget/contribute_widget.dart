import 'package:flutter/material.dart';

import '../../../../../../utils/alta_constant.dart';
import '../../../../../../utils/alta_widgets.dart';

class ContributeWidget extends StatelessWidget {
  final String title;
  final String sub;
  const ContributeWidget({super.key, required this.title, required this.sub});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AltaText(
            context: context,
            text: title,
            style: AltaTextStyle.headline2,
            fontWeight: CustomFontWeight.medium,
            color: AltaColor.darkBlue),
        const SizedBox(height: AltaSpacing.space20),
        AltaText(
            context: context,
            text: sub,
            style: AltaTextStyle.body2,
            fontWeight: CustomFontWeight.light,
            color: AltaColor.darkBlue,
            textAlign: TextAlign.center),
      ],
    );
  }
}
