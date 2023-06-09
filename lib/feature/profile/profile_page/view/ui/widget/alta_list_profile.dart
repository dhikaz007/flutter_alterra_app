import 'package:flutter/material.dart';
import 'package:flutter_alterra_app/utils/alta_constant.dart';

import '../../../../../../utils/alta_widgets.dart';
import 'profile_widgets.dart';

class AltaListProfile extends StatelessWidget {
  final String iconProfiles;
  final String text;

  final VoidCallback? onTap;
  const AltaListProfile({
    super.key,
    required this.iconProfiles,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AltaSpacing.zero,
            vertical: AltaSpacing.zero,
          ),
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          dense: true,
          minLeadingWidth: 8,
          leading: AltaSvg(
            svgPath: iconProfiles,
            width: 24,
            height: 24,
          ),
          title: AltaProfileComponent(
            text: text,
            style: AltaTextStyle.title3,
            iconArrowBlue: 'assets/icon/homepage_section/svg/arrow_blue.svg',
            onTap: onTap,
          ),
          subtitle: const AltaDivider(),
        ),
      ],
    );
  }
}
