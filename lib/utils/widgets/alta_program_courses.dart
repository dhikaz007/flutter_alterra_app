import 'package:flutter/material.dart';

import '../alta_constants.dart';
import '../alta_widgets.dart';

class AltaProgramCourses extends StatelessWidget {
  final String svgPicture;
  final String text;
  final String sub;
  const AltaProgramCourses(
      {super.key,
      required this.svgPicture,
      required this.text,
      required this.sub});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    width: 98,
                    height: 98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(svgPicture),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: AltaSpacing.space14),
                  SizedBox(
                    width: 240,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AltaText(
                            context: context,
                            text: text,
                            style: AltaTextStyle.titleH2,
                            color: AltaColor.black),
                        const SizedBox(height: AltaSpacing.space8),
                        AltaText(
                            context: context,
                            text: sub,
                            style: AltaTextStyle.bodyH4,
                            color: AltaColor.darkGray),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
