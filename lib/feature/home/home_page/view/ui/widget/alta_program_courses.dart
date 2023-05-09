import 'package:flutter/material.dart';

import '../../../../../../utils/alta_constants.dart';
import '../../../../../../utils/alta_widgets.dart';

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
    return Card(
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
                const SizedBox(width: AltaSpacing.space16),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AltaText(
                        context: context,
                        text: text,
                        style: AltaTextStyle.title3,
                        color: AltaColor.black,
                        fontWeight: CustomFontWeight.semiBold,
                      ),
                      const SizedBox(height: AltaSpacing.space8),
                      AltaText(
                        context: context,
                        text: sub,
                        style: AltaTextStyle.body3,
                        color: AltaColor.darkGray,
                        fontWeight: CustomFontWeight.normal,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
