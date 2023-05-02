import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../alta_widgets.dart';

class AltaListProfile extends StatelessWidget {
  final String iconProfiles;
  final String text;
  final VoidCallback? onTap;
  const AltaListProfile(
      {super.key, required this.iconProfiles, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          dense: true,
          minLeadingWidth: 8,
          leading: SvgPicture.asset(
            iconProfiles,
            width: 24,
            height: 24,
          ),
          title: AltaProfileComponent(
              text: text,
              style: AltaTextStyle.title3,
              iconArrowBlue: 'assets/icon/homepage_section/svg/arrow_blue.svg',
              onTap: onTap),
          subtitle: const AltaDivider(),
        ),
      ],
    );
  }
}
