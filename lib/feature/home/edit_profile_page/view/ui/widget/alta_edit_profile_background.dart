import 'package:flutter/material.dart';

import '../../../../../../utils/alta_constants.dart';
import '../../../../../../utils/alta_widgets.dart';

class AltaEditProfileBackground extends StatelessWidget {
  const AltaEditProfileBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: AltaColor.white,
        ),
        Container(
          height: 270,
          decoration: const BoxDecoration(
            color: AltaColor.darkBlue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(AltaBorderRadius.radius12),
              bottomRight: Radius.circular(AltaBorderRadius.radius12),
            ),
          ),
        ),
        const AltaCircleWidget(
          right: -75,
          top: 98,
          width: 151,
          height: 151,
          color: AltaColor.tangerine,
        ),
      ],
    );
  }
}
