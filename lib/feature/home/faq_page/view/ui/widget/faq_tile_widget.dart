import 'package:flutter/material.dart';

import '../../../../../../utils/alta_constant.dart';
import '../../../../../../utils/alta_widgets.dart';

class FaqTileWidget extends StatelessWidget {
  final Widget title;
  final Widget content;
  const FaqTileWidget({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: const EdgeInsets.only(right: AltaSpacing.space32),
      childrenPadding: const EdgeInsets.only(
        right: AltaSpacing.space16,
        left: AltaSpacing.space40,
        top: AltaSpacing.space4,
        bottom: AltaSpacing.space8,
      ),
      leading: const Padding(
        padding: EdgeInsets.only(left: AltaSpacing.space16),
        child: AltaSvg(
          svgPath: 'assets/icon/homepage_section/svg/leading_faq_icon.svg',
          width: 8,
          height: 16,
        ),
      ),
      title: title,
      controlAffinity: ListTileControlAffinity.leading,
      children: [content],
    );
  }
}
