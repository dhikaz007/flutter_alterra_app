import 'package:flutter/material.dart';
import 'package:flutter_alterra_app/utils/alta_widgets.dart';

import '../../../../../../utils/alta_constants.dart';

class FreeClassBanner extends StatelessWidget {
  final String imgAssets;
  // final String text1;
  // final String text2;
  // final String text3;
  const FreeClassBanner({
    super.key,
    required this.imgAssets,
    // required this.text1,
    // required this.text2,
    // required this.text3
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: AltaColor.gray)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              // height: 205,
              child: Image.asset(
                imgAssets,
                width: MediaQuery.of(context).size.width / 2.5,
                height: 205,
              ),
            ),
            const SizedBox(height: AltaSpacing.space4),
            AltaText(
                context: context,
                text: 'GRATIS Kelas Frontend\n& Backend!',
                style: AltaTextStyle.titleH4,
                color: AltaColor.darkBlue),
            const SizedBox(height: AltaSpacing.space4),
            AltaText(
                context: context,
                text: 'Daftar sekarang sebelum\nketinggalan!',
                style: AltaTextStyle.bodyH2,
                color: AltaColor.darkGray),
            const SizedBox(height: AltaSpacing.space12),
            AltaText(
                context: context,
                text: '25 KUOTA PER KELAS',
                style: AltaTextStyle.bodyH2a,
                color: AltaColor.darkBlue),
            const SizedBox(height: AltaSpacing.space12),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2.5,
              child: AltaPrimaryButton(
                backgroundColor: MaterialStateProperty.all(AltaColor.tangerine),
                onPressed: () {},
                borderRadius: AltaBorderRadius.radius8,
                paddingHorizontal: AltaSpacing.space60,
                paddingVertical: AltaSpacing.space6,
                child: AltaText(
                    context: context,
                    text: 'Daftar',
                    style: AltaTextStyle.bodyH1,
                    color: AltaColor.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
