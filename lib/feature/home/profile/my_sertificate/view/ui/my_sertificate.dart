import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../utils/alta_constants.dart';
import '../../../../../../utils/alta_widgets.dart';
import 'widget/sertificate_widgets.dart';

class MySertificate extends StatelessWidget {
  const MySertificate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AltaColor.darkBlue,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: SvgPicture.asset('assets/images/svg/icons/arrow_white.svg'),
        ),
        titleSpacing: 0,
        title: AltaText(
          context: context,
          text: 'Sertifikat Saya',
          style: AltaTextStyle.title1,
          color: AltaColor.white,
          fontWeight: CustomFontWeight.veryBold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Column(
              children: const [
                SizedBox(height: AltaSpacing.space28),
                AccountSertificate(),
              ],
            ),
            const Spacer(flex: 3),
            Image.asset('assets/images/png/no_sertificate.png'),
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
