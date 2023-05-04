import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../utils/alta_constants.dart';
import '../../../../../../utils/alta_widgets.dart';

class AltaFeatureCourses extends StatelessWidget {
  final String textCourse;
  final String textDetail;
  final String assetsCourse;
  const AltaFeatureCourses(
      {super.key,
      required this.textCourse,
      required this.textDetail,
      required this.assetsCourse});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 202,
              height: 116,
              child: Image.asset(
                assetsCourse,
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
              onTap: () {},
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
                  SvgPicture.asset(
                      'assets/icon/homepage_section/svg/arrow.svg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
