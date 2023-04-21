import 'package:flutter/material.dart';

import '../constant/alta_color.dart';

import 'alta_circle_widget.dart';

class AltaLoginBackground extends StatelessWidget {
  const AltaLoginBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AltaColor.white,
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
            right: -84,
            bottom: -84,
            width: 184,
            height: 184,
            color: AltaColor.tangerine,
          ),
        ],
      ),
    );
  }
}
