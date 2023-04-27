import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../../utils/constant/alta_spacing.dart';
import '../../../../../../utils/widgets/alta_text.dart';
import '../../../../../../utils/constant/alta_color.dart';

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
            padding: EdgeInsets.all(AltaSpacing.space4),
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
                style: AltaTextStyle.bodyH5,
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
              Align(
                alignment: const Alignment(-1, -1.1),
                child: SvgPicture.asset(
                  'assets/icon/homepage_section/svg/flexi_icon.svg',
                  width: 88,
                  height: 80,
                ),
              ),
              Align(
                alignment: const Alignment(1, -0.7),
                child: AltaText(
                  context: context,
                  text: headtitle,
                  style: AltaTextStyle.titleH2,
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
              style: AltaTextStyle.bodyH3,
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
              style: AltaTextStyle.bodyH5,
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
                  style: AltaTextStyle.bodyH4,
                  color: AltaColor.black,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      AltaColor.tangerine,
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(AltaBorderRadius.radius8),
                      ),
                    ),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.all(AltaSpacing.space4),
                    ),
                  ),
                  onPressed: () => debugPrint('TAP DAFTAR SEKARANG'),
                  child: AltaText(
                    context: context,
                    text: 'Daftar Sekarang',
                    style: AltaTextStyle.bodyH3,
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
