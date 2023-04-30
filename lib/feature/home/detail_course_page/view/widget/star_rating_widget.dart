import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../utils/constant/alta_spacing.dart';

class StarRatingWidget extends StatelessWidget {
  final MainAxisAlignment? mainAxisAlignment;
  const StarRatingWidget({super.key, this.mainAxisAlignment});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> ratingSelected = ValueNotifier(0);

    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: List.generate(
        5,
        (index) => Padding(
          padding: const EdgeInsets.only(right: AltaSpacing.space8),
          child: ValueListenableBuilder(
            valueListenable: ratingSelected,
            builder: (context, ratingSelectedValue, child) => InkWell(
              onTap: () => ratingSelected.value = index,
              child: index <= ratingSelectedValue
                  ? SvgPicture.asset(
                      'assets/icon/homepage_section/svg/star_fill_icon.svg',
                      width: 28,
                      height: 28,
                    )
                  : SvgPicture.asset(
                      'assets/icon/homepage_section/svg/star_icon.svg',
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
