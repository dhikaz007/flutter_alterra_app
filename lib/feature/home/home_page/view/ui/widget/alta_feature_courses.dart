import 'package:flutter/material.dart';

import '../../../../../../utils/alta_constant.dart';
import '../../../../../../utils/alta_widgets.dart';

class AltaFeatureCourses extends StatelessWidget {
  final String textCourse;
  final String textDetail;
  final String assetsCourse;
  final VoidCallback onTap;
  const AltaFeatureCourses({
    super.key,
    required this.textCourse,
    required this.textDetail,
    required this.assetsCourse,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AltaBorderRadius.radius8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AltaSpacing.space12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 202,
              height: 116,
              child: AltaLogo(
                imgPath: assetsCourse,
                width: 204,
                height: 116,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(height: AltaSpacing.space8),
            AltaText(
              context: context,
              text: textCourse,
              style: AltaTextStyle.title3,
              color: AltaColor.black,
              fontWeight: CustomFontWeight.bold,
            ),
            const SizedBox(height: AltaSpacing.space8),
            InkWell(
              onTap: onTap,
              child: Row(
                children: [
                  AltaText(
                    context: context,
                    text: textDetail,
                    style: AltaTextStyle.body3,
                    color: AltaColor.tangerine,
                    fontWeight: CustomFontWeight.medium,
                  ),
                  const SizedBox(width: AltaSpacing.space8),
                  const AltaSvg(
                    svgPath: 'assets/icon/homepage_section/svg/arrow.svg',
                    width: 5,
                    height: 12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
