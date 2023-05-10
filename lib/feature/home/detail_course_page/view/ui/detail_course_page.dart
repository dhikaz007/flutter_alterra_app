import 'package:flutter/material.dart';

import '../../../../../utils/alta_constant.dart';
import '../../../../../utils/alta_widgets.dart';
import 'feedback_page.dart';
import 'lesson_content_page.dart';
import 'quiz_content_page.dart';
import 'video_content_page.dart';

class DetailCoursePage extends StatelessWidget {
  const DetailCoursePage({super.key});

  static final List<String> _titleTab = [
    'Video',
    'Materi',
    'Quiz',
    'Feedback',
  ];

  static const List<Widget> _contentTab = [
    VideoContentPage(),
    LessonContentPage(),
    QuizContentPage(),
    FeedbackPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> currentTab = ValueNotifier(0);

    return AltaScaffold(
      isLeading: LeadingVisibility.on,
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
                itemCount: _titleTab.length,
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
                          text: _titleTab[index],
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
                  //reverse: true,
                  children: [
                    const SizedBox(height: AltaSpacing.space8),
                    ValueListenableBuilder(
                      valueListenable: currentTab,
                      builder: (context, currentTabValue, _) =>
                          _contentTab[currentTabValue],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
