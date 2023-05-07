import 'package:flutter/material.dart';

import '../../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../../utils/constant/alta_color.dart';

import 'content_card_small_widget.dart';

class CourseCardSmallWidget extends StatelessWidget {
  final String headtitle;
  final String title;
  final String subtitle;
  final String priceTitle;
  const CourseCardSmallWidget({
    super.key,
    required this.headtitle,
    required this.title,
    required this.subtitle,
    required this.priceTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: AltaColor.gray,
      child: Container(
        width: 224,
        height: 192,
        decoration: BoxDecoration(
          color: AltaColor.white,
          borderRadius: BorderRadius.circular(AltaBorderRadius.radius8),
        ),
        child: Stack(
          children: [
            Container(
              width: 224,
              height: 96,
              decoration: const BoxDecoration(
                color: AltaColor.darkBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AltaBorderRadius.radius8),
                  topRight: Radius.circular(AltaBorderRadius.radius8),
                ),
              ),
            ),
            ContentCardSmallWidget(
              headtitle: headtitle,
              title: title,
              subtitle: subtitle,
              priceTitle: priceTitle,
            ),
          ],
        ),
      ),
    );
  }
}