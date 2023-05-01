import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../utils/alta_constants.dart';
import '../../../../../../utils/alta_widgets.dart';

class BottomSertificate extends StatelessWidget {
  const BottomSertificate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AltaText(
            context: context,
            text: 'Go to Home',
            style: AltaTextStyle.bodyH1a,
            color: AltaColor.darkBlue),
        const SizedBox(width: AltaSpacing.space20),
        InkWell(
            onTap: () {},
            child: SvgPicture.asset('assets/images/svg/icons/icon_right.svg'))
      ],
    );
  }
}
