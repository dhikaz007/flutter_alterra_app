import 'package:flutter/material.dart';

import '../../../../../utils/alta_constant.dart';
import '../../../../../utils/alta_widgets.dart';

class StarRatingWidget extends StatelessWidget {
  final MainAxisAlignment? mainAxisAlignment;
  const StarRatingWidget({super.key, this.mainAxisAlignment});

  static final ValueNotifier<int> _ratingSelected = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: List.generate(
        5,
        (index) => Padding(
          padding: const EdgeInsets.only(right: AltaSpacing.space8),
          child: ValueListenableBuilder(
            valueListenable: _ratingSelected,
            builder: (context, ratingSelectedValue, child) => InkWell(
              onTap: () => _ratingSelected.value = index,
              child: index <= ratingSelectedValue
                  ? const AltaSvg(
                      svgPath:
                          'assets/icon/homepage_section/svg/star_fill_icon.svg',
                      width: 28,
                      height: 28,
                    )
                  : const AltaSvg(
                      svgPath: 'assets/icon/homepage_section/svg/star_icon.svg',
                      width: 28,
                      height: 28,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
