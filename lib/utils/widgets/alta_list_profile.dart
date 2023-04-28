import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../alta_widgets.dart';

class AltaListProfile extends StatelessWidget {
  final String svgPicture;
  final String text;
  const AltaListProfile(
      {super.key, required this.svgPicture, required this.text});

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
            svgPicture,
            width: 24,
            height: 24,
          ),
          title: AltaProfileComponent(text: text, style: AltaTextStyle.titleH2),
          subtitle: const AltaDivider(),
        ),
      ],
    );
  }
}
