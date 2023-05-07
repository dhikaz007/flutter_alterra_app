import 'package:flutter/material.dart';

import '../constant/alta_border_radius.dart';
import '../constant/alta_color.dart';
import 'alta_circle_widget.dart';

class AltaHomePageBackground extends StatelessWidget {
  const AltaHomePageBackground({super.key});

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
          left: -55,
          top: 25,
          width: 102,
          height: 102,
          color: AltaColor.tangerine,
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
