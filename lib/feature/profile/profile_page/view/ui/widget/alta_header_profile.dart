import 'package:flutter/material.dart';

import '../../../../../../../utils/alta_constants.dart';
import '../../../../../../../utils/widgets/alta_text.dart';

class AltaHeaderProfile extends StatelessWidget {
  const AltaHeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 88),
          child: Align(alignment: Alignment.center),
        ),
        const CircleAvatar(
          backgroundColor: AltaColor.tangerine,
          radius: 62,
          child: CircleAvatar(
            backgroundImage: AssetImage(
                'assets/images/login_section/png/profile_avatar.png'),
            radius: 60,
          ),
        ),
        const SizedBox(width: AltaSpacing.space12),
        AltaText(
          context: context,
          text: 'Nahdy Dailamy Batewa',
          style: AltaTextStyle.title3,
          color: AltaColor.white,
          fontWeight: CustomFontWeight.semiBold,
        ),
        AltaText(
          context: context,
          text: 'nadewa@alterra.com',
          style: AltaTextStyle.body1,
          color: AltaColor.white,
          fontWeight: CustomFontWeight.medium,
        ),
      ],
    );
  }
}
