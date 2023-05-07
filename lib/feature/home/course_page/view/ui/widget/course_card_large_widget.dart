import 'package:flutter/material.dart';

import '../../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../../utils/constant/alta_color.dart';

import 'content_card_large_widget.dart';

class CourseCardLargeWidget extends StatelessWidget {
  final String headtitle;
  final String subtitle;
  final String imgAsset;
  const CourseCardLargeWidget({
    super.key,
    required this.headtitle,
    required this.subtitle,
    required this.imgAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: AltaColor.gray,
      child: Container(
        width: 264,
        height: 372,
        decoration: BoxDecoration(
          color: AltaColor.white,
          borderRadius: BorderRadius.circular(AltaBorderRadius.radius8),
        ),
        child: Stack(
          children: [
            Container(
              width: 264,
              height: 186,
              decoration: const BoxDecoration(
                color: AltaColor.darkBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AltaBorderRadius.radius8),
                  topRight: Radius.circular(AltaBorderRadius.radius8),
                ),
              ),
            ),
            ContentCardLargeWidget(
              headtitle: headtitle,
              subtitle: subtitle,
              imgAsset: imgAsset,
            ),
          ],
        ),
      ),
    );
  }
}