import 'package:flutter/material.dart';

import '../constant/alta_color.dart';
import 'alta_circle_widget.dart';

class AltaSplashBackground extends StatelessWidget {
  const AltaSplashBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AltaColor.darkBlue,
      child: Stack(
        children: const [
          AltaCircleWidget(
            left: -84,
            top: -84,
            width: 184,
            height: 184,
            color: AltaColor.tangerine,
          ),
          AltaCircleWidget(
            right: -160,
            bottom: 32,
            width: 250,
            height: 250,
            color: AltaColor.tangerine,
          ),
        ],
      ),
    );
  }
}
