import 'package:flutter/material.dart';

import '../../../../../../utils/alta_constant.dart';
import '../../../../../../utils/alta_widgets.dart';
import 'widget/sertificate_widgets.dart';

class MySertificate extends StatelessWidget {
  const MySertificate({super.key});

  @override
  Widget build(BuildContext context) {
    return AltaScaffold(
      isLeading: LeadingVisibility.on,
      isAppbar: AppBarVisibility.on,
      appBarColor: AltaColor.darkBlue,
      scaffoldColor: AltaColor.white,
      leadingAsset: 'assets/icon/homepage_section/svg/arrow_white.svg',
      leadingWidth: 24,
      leadingHeight: 24,
      onPressed: () => Navigator.of(context).pop(true),
      title: AltaText(
        context: context,
        text: 'Sertifikat Saya',
        style: AltaTextStyle.title1,
        color: AltaColor.white,
        fontWeight: CustomFontWeight.veryBold,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: AltaSpacing.space16,
          right: AltaSpacing.space16,
        ),
        child: Column(
          children: [
            Column(
              children: const [
                SizedBox(height: AltaSpacing.space28),
                AccountSertificate(),
              ],
            ),
            const Spacer(flex: 3),
            const AltaLogo(
              imgPath: 'assets/images/homepage_section/png/no_sertificate.png',
              width: 180,
              height: 160,
              alignment: Alignment.center,
            ),
            const SizedBox(height: AltaSpacing.space20),
            AltaText(
              context: context,
              text: 'Sorry!',
              style: AltaTextStyle.headline1,
              color: AltaColor.black,
              fontWeight: CustomFontWeight.normal,
            ),
            const SizedBox(height: AltaSpacing.space12),
            AltaText(
              context: context,
              text: 'Complete courses to earn certificates',
              style: AltaTextStyle.body1,
              color: AltaColor.darkBlue,
              fontWeight: CustomFontWeight.light,
            ),
            const Spacer(flex: 3),
            const BottomSertificate(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
