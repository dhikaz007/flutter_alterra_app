import 'package:flutter/material.dart';

import '../../../../../utils/alta_constant.dart';
import '../../../../../utils/alta_widgets.dart';

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

  static final ValueNotifier<bool> _isSelected = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _isSelected,
      builder: (context, isSelectedValue, child) => InkWell(
        onTap: () => _isSelected.value = !_isSelected.value,
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
              style: AltaTextStyle.body2,
              fontWeight: CustomFontWeight.bold,
              color: !isSelectedValue ? AltaColor.black : AltaColor.white,
            ),
          ),
        ),
      ),
    );
  }
}
