import 'package:flutter/material.dart';

import '../../../../../utils/widgets/alta_icon_button.dart';
import '../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_scaffold.dart';
import '../../../../../utils/widgets/alta_text.dart';

import 'feedback_page.dart';
import 'lesson_content_page.dart';
import 'quiz_content_page.dart';
import 'video_content_page.dart';

class DetailCoursePage extends StatelessWidget {
  const DetailCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> currentTab = ValueNotifier(0);

    List<String> titleTab = [
      'Video',
      'Materi',
      'Quiz',
      'Feedback',
    ];

    List<Widget> contentTab = const [
      VideoContentPage(),
      LessonContentPage(),
      QuizContentPage(),
      FeedbackPage(),
    ];

    return AltaScaffold(
      isAppbar: AppBarVisibility.on,
      scaffoldColor: AltaColor.white,
      appBarColor: AltaColor.darkBlue,
      centerTitle: true,
      leadingWidth: 24,
      leadingHeight: 24,
      leadingAsset: 'assets/icon/homepage_section/svg/circle_left_icon.svg',
      onPressed: () =>
          currentTab.value == 0 ? currentTab.value : currentTab.value--,
      title: AltaText(
        context: context,
        text: 'Introdaction to UI/UX',
        style: AltaTextStyle.title1,
        fontWeight: CustomFontWeight.semiBold,
        color: AltaColor.white,
      ),
      actions: [
        AltaIconButton(
          svgAsset: 'assets/icon/homepage_section/svg/circle_right_icon.svg',
          iconHeight: 24,
          iconWidth: 24,
          onPressed: () => currentTab.value <= 0 || currentTab.value < 3
              ? currentTab.value++
              : currentTab.value,
        ),
      ],
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemCount: titleTab.length,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) =>
                    const SizedBox(width: AltaSpacing.space8),
                itemBuilder: (context, index) => ValueListenableBuilder(
                  valueListenable: currentTab,
                  builder: (context, currentTabValue, child) => InkWell(
                    onTap: () => currentTab.value = index,
                    child: Container(
                      width: 100,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AltaBorderRadius.radius8),
                        color: currentTabValue == index
                            ? AltaColor.darkBlue
                            : AltaColor.white,
                        border: Border.all(color: AltaColor.darkBlue),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: AltaText(
                          context: context,
                          text: titleTab[index],
                          style: AltaTextStyle.body1,
                          fontWeight: CustomFontWeight.semiBold,
                          color: currentTabValue == index
                              ? AltaColor.white
                              : AltaColor.darkBlue,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  // reverse: true,
                  children: [
                    const SizedBox(height: AltaSpacing.space8),
                    ValueListenableBuilder(
                      valueListenable: currentTab,
                      builder: (context, currentTabValue, _) =>
                          contentTab[currentTabValue],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Container(
      //   width: 376,
      //   height: 72,
      //   decoration: BoxDecoration(
      //     color: AltaColor.white,
      //     boxShadow: [
      //       BoxShadow(
      //         color: AltaColor.gray.withOpacity(0.8),
      //         blurRadius: 24,
      //         offset: const Offset(0, -4), // changes position of shadow
      //       ),
      //     ],
      //   ),
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(
      //       vertical: AltaSpacing.space16,
      //       horizontal: AltaSpacing.space36,
      //     ),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         AltaPrimaryIconButton(
      //           icon: SvgPicture.asset(
      //             'assets/icon/homepage_section/svg/previous_icon.svg',
      //             width: 24,
      //             height: 24,
      //           ),
      //           label: AltaText(
      //             context: context,
      //             text: 'PREVIOUS TOPIC',
      //             style: AltaTextStyle.bodyH3,
      //             color: AltaColor.white,
      //           ),
      //           onPressed: () => currentTab.value == 0
      //               ? currentTab.value
      //               : currentTab.value--,
      //         ),
      //         AltaPrimaryIconButton(
      //           label: SvgPicture.asset(
      //             'assets/icon/homepage_section/svg/next_icon.svg',
      //             width: 24,
      //             height: 24,
      //           ),
      //           icon: AltaText(
      //             context: context,
      //             text: 'NEXT TOPIC',
      //             style: AltaTextStyle.bodyH3,
      //             color: AltaColor.white,
      //           ),
      //           onPressed: () => currentTab.value <= 0 || currentTab.value < 3
      //               ? currentTab.value++
      //               : currentTab.value,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
