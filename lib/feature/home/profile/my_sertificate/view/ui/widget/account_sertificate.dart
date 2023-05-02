import 'package:flutter/material.dart';

import '../../../../../../../utils/alta_constants.dart';
import '../../../../../../../utils/alta_widgets.dart';

class AccountSertificate extends StatelessWidget {
  const AccountSertificate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/png/profile_avatar.png'),
          radius: 22,
        ),
        const SizedBox(width: AltaSpacing.space12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AltaText(
              context: context,
              text: 'Nahdy Dailamy Batewa',
              style: AltaTextStyle.title3,
              color: AltaColor.darkBlue,
              fontWeight: CustomFontWeight.bold,
            ),
            AltaText(
              context: context,
              text: 'nadewa@alterra.com',
              style: AltaTextStyle.body2,
              color: AltaColor.darkBlue,
              fontWeight: CustomFontWeight.normal,
            ),
          ],
        ),
        const SizedBox(width: AltaSpacing.space4),
        const Spacer(flex: 1),
        AltaPrimaryButton(
            backgroundColor: MaterialStateProperty.all(AltaColor.darkBlue),
            borderRadius: 14,
            paddingVertical: 6,
            paddingHorizontal: 8,
            onPressed: () {},
            child: AltaText(
              context: context,
              text: 'Lanjut Belajar',
              style: AltaTextStyle.body2,
              color: AltaColor.white,
              fontWeight: CustomFontWeight.semiBold,
            )),
      ],
    );
  }
}
