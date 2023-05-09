import 'package:flutter/material.dart';

import '../../../../../../utils/alta_constants.dart';
import '../../../../../../utils/alta_widgets.dart';
import '../../../../../profile/profile_page/view/ui/widget/alta_divider.dart';

class AccountSettingList extends StatelessWidget {
  final TextEditingController? controller;
  final String title;
  final String? content;
  const AccountSettingList({
    super.key,
    this.controller,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AltaText(
          context: context,
          text: title,
          style: AltaTextStyle.body1,
          color: AltaColor.darkBlue,
          fontWeight: CustomFontWeight.normal,
        ),
        const SizedBox(height: AltaSpacing.space16),
        AltaText(
          context: context,
          text: content,
          style: AltaTextStyle.body1,
          fontWeight: CustomFontWeight.bold,
          color: AltaColor.black,
        ),
        const SizedBox(height: AltaSpacing.space16),
        const AltaDivider(),
      ],
    );
  }
}
