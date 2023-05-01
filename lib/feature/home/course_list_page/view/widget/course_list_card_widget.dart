import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_text.dart';
import '../../../../../utils/constant/alta_border_radius.dart';

enum ProgressIndicatorBar { none, complete, aThreeQuarter, aHalf, aQuarter }

extension Indicator on ProgressIndicatorBar {
  double get number {
    switch (this) {
      case ProgressIndicatorBar.none:
        return 0.0;
      case ProgressIndicatorBar.complete:
        return 1.0;
      case ProgressIndicatorBar.aThreeQuarter:
        return 0.75;
      case ProgressIndicatorBar.aHalf:
        return 0.5;
      case ProgressIndicatorBar.aQuarter:
        return 0.25;
    }
  }
}

class CourseListCardWidget extends StatelessWidget {
  final ProgressIndicatorBar value;
  final String titleLesson;
  const CourseListCardWidget({
    super.key,
    required this.titleLesson,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AltaSpacing.space12,
        vertical: AltaSpacing.space16,
      ),
      width: 368,
      height: 140,
      decoration: BoxDecoration(
        color: AltaColor.white,
        borderRadius: BorderRadius.circular(AltaBorderRadius.radius12),
        border: Border.all(color: AltaColor.gray),
      ),
      child: Stack(
        children: [
          Align(
            alignment: const Alignment(-1, -1),
            child: AltaText(
              context: context,
              text: titleLesson,
              style: AltaTextStyle.headlineH2,
              color: AltaColor.black,
            ),
          ),
          Align(
            alignment: const Alignment(-1, 0.05),
            child: AltaText(
              context: context,
              text: '2 Topics | 1 Quiz',
              style: AltaTextStyle.bodyH3,
              color: AltaColor.black,
            ),
          ),
          Align(
            alignment: const Alignment(1, -1),
            child: value.number == 0.0
                ? SvgPicture.asset(
                    'assets/icon/homepage_section/svg/lock_icon.svg',
                    width: 24,
                    height: 24,
                  )
                : SvgPicture.asset(
                    'assets/icon/homepage_section/svg/check_icon.svg',
                    width: 24,
                    height: 24,
                  ),
          ),
          Align(
            alignment: const Alignment(-1, 0.5),
            child: SizedBox(
              width: 260,
              height: 1.6,
              child: LinearProgressIndicator(
                backgroundColor: AltaColor.gray,
                value: value.number,
                valueColor: const AlwaysStoppedAnimation(AltaColor.tangerine),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-1, 0.85),
            child: AltaText(
              context: context,
              text: '${value.number * 100}% Selesai',
              style: AltaTextStyle.bodyH3,
              color: AltaColor.tangerine,
            ),
          ),
          Align(
            alignment: const Alignment(1, 0.6),
            child: SvgPicture.asset(
              'assets/icon/homepage_section/svg/arrow_right_icon.svg',
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
    );
  }
}
