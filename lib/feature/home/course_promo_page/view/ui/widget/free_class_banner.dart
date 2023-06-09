import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../utils/alta_widgets.dart';
import '../../../../../../utils/alta_constant.dart';

class FreeClassBanner extends StatelessWidget {
  final String imgAssets;
  const FreeClassBanner({super.key, required this.imgAssets});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AltaBorderRadius.radius8),
        side: const BorderSide(color: AltaColor.gray),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AltaSpacing.space8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              // height: 205,
              child: AltaLogo(
                imgPath: imgAssets,
                width: MediaQuery.of(context).size.width / 2.5,
                height: 205,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(height: AltaSpacing.space4),
            AltaText(
              context: context,
              text: 'GRATIS Kelas Frontend\n& Backend!',
              style: AltaTextStyle.body1,
              color: AltaColor.darkBlue,
              fontWeight: CustomFontWeight.veryBold,
            ),
            const SizedBox(height: AltaSpacing.space4),
            AltaText(
              context: context,
              text: 'Daftar sekarang sebelum\nketinggalan!',
              style: AltaTextStyle.body2,
              color: AltaColor.darkGray,
              fontWeight: CustomFontWeight.medium,
            ),
            const SizedBox(height: AltaSpacing.space12),
            AltaText(
              context: context,
              text: '25 KUOTA PER KELAS',
              style: AltaTextStyle.body2,
              color: AltaColor.darkBlue,
              fontWeight: CustomFontWeight.semiBold,
            ),
            const SizedBox(height: AltaSpacing.space12),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2.5,
              child: AltaPrimaryButton(
                backgroundColor: MaterialStateProperty.all(AltaColor.tangerine),
                onPressed: () async {
                  await launchUrl(
                    Uri.parse("https://academy.alterra.id/"),
                  );
                },
                borderRadius: AltaBorderRadius.radius8,
                paddingHorizontal: AltaSpacing.space56,
                paddingVertical: AltaSpacing.space8,
                child: AltaText(
                  context: context,
                  text: 'Daftar',
                  style: AltaTextStyle.body1,
                  color: AltaColor.white,
                  fontWeight: CustomFontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
