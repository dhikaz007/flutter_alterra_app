import 'package:flutter/material.dart';

import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/widgets/alta_text.dart';

class VideoContentPage extends StatelessWidget {
  const VideoContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AltaText(
          context: context,
          text: 'ADD VIDEO HERE',
          style: AltaTextStyle.headlineH1,
          color: AltaColor.black,
        ),
      ],
    );
  }
}
