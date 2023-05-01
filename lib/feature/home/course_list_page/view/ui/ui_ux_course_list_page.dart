import 'package:flutter/material.dart';
import 'package:flutter_alterra_app/utils/widgets/alta_scaffold.dart';

import '../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_icon_button.dart';
import '../../../../../utils/widgets/alta_text.dart';
import '../widget/course_list_card_widget.dart';

class UiUxCourseListPage extends StatelessWidget {
  const UiUxCourseListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AltaScaffold(
      isAppbar: AppBarVisibility.off,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: AltaSpacing.space16,
            right: AltaSpacing.space16,
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(AltaSpacing.space16),
                  width: 368,
                  height: 108,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AltaBorderRadius.radius12),
                    gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topLeft,
                      colors: [
                        AltaColor.gradientTop,
                        AltaColor.gradientDown,
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AltaIconButton(
                        svgAsset:
                            'assets/icon/homepage_section/svg/previous_icon.svg',
                        iconWidth: 24,
                        iconHeight: 24,
                        splashRadius: 24,
                        color: AltaColor.white,
                        onPressed: () => Navigator.of(context).pop(true),
                      ),
                      Image.asset(
                        'assets/images/homepage_section/png/ui_ux_image.png',
                        width: 74,
                        height: 74,
                      ),
                      AltaText(
                        context: context,
                        text: 'Program Flexi UI/UX',
                        style: AltaTextStyle.headlineH2,
                        color: AltaColor.white,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AltaSpacing.space16),
                const CourseListCardWidget(
                  titleLesson: 'Introduction to UI/UX',
                  value: ProgressIndicatorBar.complete,
                ),
                const SizedBox(height: 16),
                const CourseListCardWidget(
                  titleLesson: 'Design Process Framework',
                  value: ProgressIndicatorBar.complete,
                ),
                const SizedBox(height: 16),
                const CourseListCardWidget(
                  titleLesson: 'Identifying User & Design Requirement',
                  value: ProgressIndicatorBar.complete,
                ),
                const SizedBox(height: 16),
                const CourseListCardWidget(
                  titleLesson: 'Figma Introduction Interface Dimension',
                  value: ProgressIndicatorBar.aThreeQuarter,
                ),
                const SizedBox(height: 16),
                const CourseListCardWidget(
                  titleLesson: 'Interface Structure',
                  value: ProgressIndicatorBar.aHalf,
                ),
                const SizedBox(height: 16),
                const CourseListCardWidget(
                  titleLesson: 'Design System',
                  value: ProgressIndicatorBar.aQuarter,
                ),
                const SizedBox(height: 16),
                const CourseListCardWidget(
                  titleLesson: 'Interface Structure',
                  value: ProgressIndicatorBar.none,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
