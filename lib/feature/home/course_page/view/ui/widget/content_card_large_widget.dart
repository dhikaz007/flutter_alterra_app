import 'package:flutter/material.dart';

import '../../../../../../utils/alta_constant.dart';
import '../../../../../../utils/alta_widgets.dart';

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
            vertical: AltaSpacing.space20,
            horizontal: AltaSpacing.space24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: AltaLogo(
                  imgPath: imgAsset ?? '',
                  width: 88,
                  height: 80,
                  alignment: Alignment.center,
                ),
              ),
              const SizedBox(height: AltaSpacing.space16),
              Align(
                alignment: const Alignment(0, 0),
                child: AltaText(
                  context: context,
                  text: headtitle,
                  style: AltaTextStyle.title1,
                  fontWeight: CustomFontWeight.bold,
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
              style: AltaTextStyle.body2,
              fontWeight: CustomFontWeight.normal,
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
                AltaPrimaryButton(
                  backgroundColor: MaterialStateProperty.all(
                    AltaColor.tangerine,
                  ),
                  borderRadius: AltaBorderRadius.radius4,
                  paddingVertical: AltaSpacing.space8,
                  paddingHorizontal: AltaSpacing.space12,
                  onPressed: () => debugPrint('TAP LIHAT SILABUS'),
                  child: AltaText(
                    context: context,
                    text: 'Lihat Silabus',
                    style: AltaTextStyle.body2,
                    fontWeight: CustomFontWeight.normal,
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
