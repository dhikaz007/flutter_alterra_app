import 'package:flutter/material.dart';

import '../../../../../../utils/alta_constants.dart';
import '../../../../../../utils/alta_widgets.dart';

class AltaHeaderProfile extends StatelessWidget {
  final String name;
  final String email;
  const AltaHeaderProfile({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          backgroundColor: AltaColor.tangerine,
          radius: 62,
          child: CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/login_section/png/profile_avatar.png',
            ),
            radius: 60,
          ),
        ),
        const SizedBox(width: AltaSpacing.space12),
        AltaText(
          context: context,
          text: name,
          style: AltaTextStyle.title3,
          color: AltaColor.white,
          fontWeight: CustomFontWeight.semiBold,
        ),
        AltaText(
          context: context,
          text: email,
          style: AltaTextStyle.body1,
          color: AltaColor.white,
          fontWeight: CustomFontWeight.medium,
        ),
      ],
    );
  }
}
