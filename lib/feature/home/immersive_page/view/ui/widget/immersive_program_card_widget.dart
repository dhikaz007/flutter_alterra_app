import 'package:flutter/material.dart';

import '../../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../../utils/constant/alta_color.dart';
import '../../../../../../utils/constant/alta_spacing.dart';
import '../../../../../../utils/widgets/alta_logo.dart';
import '../../../../../../utils/widgets/alta_text.dart';

class ImmersiveProgramCard extends StatelessWidget {
  final String titleCourse;
  final String subtitleCourse;
  const ImmersiveProgramCard({
    super.key,
    required this.titleCourse,
    required this.subtitleCourse,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: AltaSpacing.space4,
        horizontal: AltaSpacing.space16,
      ),
      width: 188,
      height: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AltaBorderRadius.radius12),
        color: AltaColor.white,
        border: Border.all(color: AltaColor.gray),
      ),
      child: Column(
        children: [
          const AltaLogo(
            imgPath: 'assets/icon/homepage_section/png/front_end_icon.png',
            width: 76,
            height: 76,
            alignment: Alignment.center,
          ),
          AltaText(
            context: context,
            text: titleCourse,
            style: AltaTextStyle.bodyH4,
            color: AltaColor.darkBlue,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AltaSpacing.space4),
          AltaText(
            context: context,
            text: subtitleCourse,
            style: AltaTextStyle.bodyH5,
            color: AltaColor.darkGray,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
