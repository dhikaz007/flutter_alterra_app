import 'package:flutter/material.dart';

import '../alta_constant.dart';
import '../alta_widgets.dart';

class AltaPopUpMessage extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback onPressed;
  const AltaPopUpMessage({
    super.key,
    required this.title,
    required this.content,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: const AltaSvg(
        svgPath: 'assets/icon/login_section/svg/valid_icon.svg',
        width: 34,
        height: 34,
      ),
      title: AltaText(
        context: context,
        text: title,
        style: AltaTextStyle.title3,
        fontWeight: CustomFontWeight.bold,
        color: AltaColor.black,
        textAlign: TextAlign.center,
      ),
      content: AltaText(
        context: context,
        text: content,
        style: AltaTextStyle.body1,
        fontWeight: CustomFontWeight.normal,
        color: AltaColor.darkGray,
        textAlign: TextAlign.center,
      ),
      actions: [
        Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            width: 156,
            height: 36,
            child: AltaPrimaryButton(
              backgroundColor: MaterialStateProperty.all(AltaColor.darkBlue),
              borderRadius: AltaBorderRadius.radius10,
              paddingVertical: AltaSpacing.zero,
              paddingHorizontal: AltaSpacing.zero,
              onPressed: onPressed,
              child: AltaText(
                context: context,
                text: 'KEMBALI',
                style: AltaTextStyle.body1,
                fontWeight: CustomFontWeight.bold,
                color: AltaColor.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
