import 'package:flutter/material.dart';

import '../../../../../../utils/alta_constant.dart';
import '../../../../../../utils/alta_widgets.dart';

class ContentCardSmallWidget extends StatelessWidget {
  final String headtitle;
  final String title;
  final String subtitle;
  final String priceTitle;
  const ContentCardSmallWidget({
    super.key,
    required this.headtitle,
    required this.title,
    required this.subtitle,
    required this.priceTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: const Alignment(1, -0.9),
          child: Container(
            padding: const EdgeInsets.all(AltaSpacing.space4),
            width: 72,
            height: 20,
            decoration: const BoxDecoration(
              color: AltaColor.green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AltaBorderRadius.radius4),
                bottomLeft: Radius.circular(AltaBorderRadius.radius4),
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: AltaText(
                context: context,
                text: 'Rekomendasi',
                style: AltaTextStyle.body3,
                fontWeight: CustomFontWeight.medium,
                color: AltaColor.white,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AltaSpacing.space12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Align(
                alignment: Alignment(-1, -1.1),
                child: AltaSvg(
                  svgPath: 'assets/icon/homepage_section/svg/flexi_icon.svg',
                  width: 88,
                  height: 80,
                ),
              ),
              Align(
                alignment: const Alignment(1, -0.7),
                child: AltaText(
                  context: context,
                  text: headtitle,
                  style: AltaTextStyle.title3,
                  fontWeight: CustomFontWeight.semiBold,
                  color: AltaColor.white,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AltaSpacing.space8),
          child: Align(
            alignment: const Alignment(-1, 0.2),
            child: AltaText(
              context: context,
              text: title,
              style: AltaTextStyle.body2,
              fontWeight: CustomFontWeight.medium,
              color: AltaColor.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AltaSpacing.space8),
          child: Align(
            alignment: const Alignment(-1, 0.4),
            child: AltaText(
              context: context,
              text: subtitle,
              style: AltaTextStyle.body3,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AltaText(
                  context: context,
                  text: priceTitle,
                  style: AltaTextStyle.body2,
                  fontWeight: CustomFontWeight.bold,
                  color: AltaColor.black,
                ),
                AltaPrimaryButton(
                  backgroundColor:
                      MaterialStateProperty.all(AltaColor.tangerine),
                  borderRadius: AltaBorderRadius.radius8,
                  paddingHorizontal: AltaSpacing.space4,
                  paddingVertical: AltaSpacing.space4,
                  onPressed: () => debugPrint('TAP DAFTAR SEKARANG'),
                  child: AltaText(
                    context: context,
                    text: 'Daftar Sekarang',
                    style: AltaTextStyle.body2,
                    fontWeight: CustomFontWeight.medium,
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
