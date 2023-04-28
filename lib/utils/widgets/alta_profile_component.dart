import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../alta_constants.dart';
import 'alta_text.dart';

class AltaProfileComponent extends StatelessWidget {
  final String text;
  final AltaTextStyle style;
  const AltaProfileComponent(
      {super.key, required this.text, required this.style});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AltaText(
            context: context,
            text: text,
            style: style,
            color: AltaColor.darkBlue),
        InkWell(
            onTap: () {},
            child: SvgPicture.asset('assets/images/svg/icons/arrow_blue.svg')),
      ],
    );
  }
}
