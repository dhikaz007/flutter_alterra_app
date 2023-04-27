import 'package:flutter/material.dart';

import '../../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../../utils/constant/alta_spacing.dart';
import '../../../../../../utils/widgets/alta_text.dart';
import '../../../../../../utils/constant/alta_color.dart';

class ContentCardLargeWidget extends StatelessWidget {
  final String headtitle;
  final String subtitle;
  final String? imgAsset;
  const ContentCardLargeWidget({
    super.key,
    required this.headtitle,
    required this.subtitle,
    this.imgAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: AltaSpacing.space20, horizontal: AltaSpacing.space24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  imgAsset ?? '',
                  width: 88,
                  height: 80,
                ),
              ),
              const SizedBox(height: AltaSpacing.space16),
              Align(
                alignment: const Alignment(0, 0),
                child: AltaText(
                  context: context,
                  text: headtitle,
                  style: AltaTextStyle.headlineH2,
                  color: AltaColor.white,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AltaSpacing.space8),
          child: Align(
            alignment: const Alignment(-1, 0.3),
            child: AltaText(
              context: context,
              text: subtitle,
              style: AltaTextStyle.bodyH2,
              color: AltaColor.darkGray,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AltaSpacing.space8),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      AltaColor.tangerine,
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(AltaBorderRadius.radius4),
                      ),
                    ),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                        horizontal: AltaSpacing.space12,
                        vertical: AltaSpacing.space8,
                      ),
                    ),
                  ),
                  onPressed: () => debugPrint('TAP LIHAT SILABUS'),
                  child: AltaText(
                    context: context,
                    text: 'Lihat Silabus',
                    style: AltaTextStyle.bodyH2,
                    color: AltaColor.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
