import 'package:flutter/material.dart';

import '../../../../../utils/alta_constant.dart';
import '../../../../../utils/alta_widgets.dart';
import '../../../../home/course_list_page/view/ui/flutter_course_list_page.dart';
import '../../../../home/course_list_page/view/ui/ui_ux_course_list_page.dart';

class MyCoursePage extends StatelessWidget {
  const MyCoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AltaScaffold(
      isLeading: LeadingVisibility.on,
      isAppbar: AppBarVisibility.on,
      scaffoldColor: AltaColor.white,
      appBarColor: AltaColor.darkBlue,
      centerTitle: true,
      leadingHeight: 24,
      leadingWidth: 24,
      leadingAsset: 'assets/icon/homepage_section/svg/back_icon.svg',
      onPressed: () => Navigator.of(context).pop(true),
      title: AltaText(
        context: context,
        text: 'Kursus anda saat ini',
        style: AltaTextStyle.title1,
        fontWeight: CustomFontWeight.semiBold,
        color: AltaColor.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AltaSpacing.space16),
        child: Column(
          children: [
            InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => const UiUxCourseListPage(),
              )),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: AltaSpacing.space16,
                  horizontal: AltaSpacing.space20,
                ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const AltaLogo(
                      imgPath:
                          'assets/images/homepage_section/png/ui_ux_image.png',
                      width: 74,
                      height: 74,
                      alignment: Alignment.center,
                    ),
                    AltaText(
                      context: context,
                      text: 'Program Flexi UI/UX',
                      style: AltaTextStyle.title1,
                      fontWeight: CustomFontWeight.bold,
                      color: AltaColor.white,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: AltaSpacing.space16),
            InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => const FlutterCourseListPage(),
              )),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: AltaSpacing.space16,
                  horizontal: AltaSpacing.space20,
                ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const AltaLogo(
                      imgPath:
                          'assets/images/homepage_section/png/flutter_image.png',
                      width: 74,
                      height: 74,
                      alignment: Alignment.center,
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
            ),
          ],
        ),
      ),
    );
  }
}
