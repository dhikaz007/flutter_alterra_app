import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../alta_constants.dart';
import '../alta_widgets.dart';

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
            const SizedBox(height: AltaSpacing.space6),
            AltaText(
                context: context,
                text: textCourse,
                style: AltaTextStyle.titleH2,
                color: AltaColor.black),
            const SizedBox(height: AltaSpacing.space6),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  AltaText(
                      context: context,
                      text: textDetail,
                      style: AltaTextStyle.bodyH3,
                      color: AltaColor.tangerine),
                  const SizedBox(width: AltaSpacing.space6),
                  SvgPicture.asset('assets/images/svg/icons/arrow.svg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
