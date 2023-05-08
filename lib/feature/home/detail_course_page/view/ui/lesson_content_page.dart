import 'package:flutter/material.dart';

import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/widgets/alta_text.dart';

class LessonContentPage extends StatelessWidget {
  const LessonContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AltaText(
          context: context,
          text: 'ADD PPTX HERE',
          style: AltaTextStyle.headline1,
          fontWeight: CustomFontWeight.bold,
          color: AltaColor.black,
        ),
      ],
    );
  }
}
