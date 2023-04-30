import 'package:flutter/material.dart';

import '../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_text.dart';

class RatingBadgeWidget extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  const RatingBadgeWidget({
    super.key,
    required this.title,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isSelected = ValueNotifier(false);

    return ValueListenableBuilder(
      valueListenable: isSelected,
      builder: (context, isSelectedValue, child) => InkWell(
        onTap: () => isSelected.value = !isSelected.value,
        child: Container(
          width: width,
          height: height,
          padding: const EdgeInsets.symmetric(
            vertical: AltaSpacing.space8,
            horizontal: AltaSpacing.space16,
          ),
          decoration: BoxDecoration(
            color: !isSelectedValue ? AltaColor.gray : AltaColor.tangerine,
            borderRadius: BorderRadius.circular(AltaBorderRadius.radius8),
          ),
          child: Align(
            alignment: Alignment.center,
            child: AltaText(
              context: context,
              text: title,
              style: AltaTextStyle.bodyH4,
              color: !isSelectedValue ? AltaColor.black : AltaColor.white,
            ),
          ),
        ),
      ),
    );
  }
}
