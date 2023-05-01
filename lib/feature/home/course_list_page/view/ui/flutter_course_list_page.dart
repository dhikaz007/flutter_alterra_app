import 'package:flutter/material.dart';

import '../../../../../utils/widgets/alta_scaffold.dart';
import '../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/widgets/alta_icon_button.dart';
import '../../../../../utils/widgets/alta_text.dart';

import '../widget/course_list_card_widget.dart';

class FlutterCourseListPage extends StatelessWidget {
  const FlutterCourseListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AltaScaffold(
      scaffoldColor: AltaColor.white,
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
                        'assets/images/homepage_section/png/flutter_image.png',
                        width: 74,
                        height: 74,
                      ),
                      AltaText(
                        context: context,
                        text: 'Program Flexi Flutter',
                        style: AltaTextStyle.title1,
                        fontWeight: CustomFontWeight.bold,
                        color: AltaColor.white,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AltaSpacing.space16),
                const CourseListCardWidget(
                  titleLesson: 'Basic Version and Branch Management (Git)',
                  value: ProgressIndicatorBar.complete,
                ),
                const SizedBox(height: AltaSpacing.space16),
                const CourseListCardWidget(
                  titleLesson: 'Introduction Mobile App Development',
                  value: ProgressIndicatorBar.aThreeQuarter,
                ),
                const SizedBox(height: AltaSpacing.space16),
                const CourseListCardWidget(
                  titleLesson:
                      'Introduction to Algorithm and \nDart Programming',
                  value: ProgressIndicatorBar.aHalf,
                ),
                const SizedBox(height: AltaSpacing.space16),
                const CourseListCardWidget(
                  titleLesson: 'Branching - Looping - Function',
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
