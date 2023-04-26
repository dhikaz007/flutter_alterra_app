import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../utils/constant/alta_spacing.dart';

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
      leading: Padding(
        padding: const EdgeInsets.only(left: AltaSpacing.space16),
        child: SvgPicture.asset(
          'assets/icon/homepage_section/svg/leading_faq_icon.svg',
        ),
      ),
      title: title,
      controlAffinity: ListTileControlAffinity.leading,
      children: [content],
    );
  }
}
