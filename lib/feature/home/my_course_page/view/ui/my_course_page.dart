import 'package:flutter/material.dart';

import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_logo.dart';
import '../../../../../utils/widgets/alta_scaffold.dart';
import '../../../../../utils/widgets/alta_text.dart';
import '../../../../../utils/constant/alta_border_radius.dart';

class MyCoursePage extends StatelessWidget {
  const MyCoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AltaScaffold(
      isAppbar: AppBarVisibility.on,
      appBarColor: AltaColor.darkBlue,
      title: AltaText(
        context: context,
        text: 'Kursus anda saat ini',
        style: AltaTextStyle.headlineH2,
        color: AltaColor.white,
      ),
      centerTitle: true,
      leadingHeight: 24,
      leadingWidth: 24,
      leadingAsset: 'assets/icon/homepage_section/svg/back_icon.svg',
      onPressed: () => Navigator.of(context).pop(true),
      body: Padding(
        padding: const EdgeInsets.all(AltaSpacing.space16),
        child: Column(
          children: [
            InkWell(
              onTap: () => debugPrint('Program Flexi UI/UX'),
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
                      style: AltaTextStyle.headlineH2,
                      color: AltaColor.white,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: AltaSpacing.space16),
            InkWell(
              onTap: () => debugPrint('Program Flexi Flutter'),
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
                      style: AltaTextStyle.headlineH2,
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
