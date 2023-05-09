import 'package:flutter/material.dart';

import '../../../home_page/view/ui/main_home_page.dart';
import '../../../../../utils/widgets/alta_svg.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_logo.dart';
import '../../../../../utils/widgets/alta_scaffold.dart';
import '../../../../../utils/widgets/alta_text.dart';
import '../../../../../utils/constant/alta_color.dart';

class FeedbackCompletePage extends StatelessWidget {
  const FeedbackCompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AltaScaffold(
      isAppbar: AppBarVisibility.on,
      scaffoldColor: AltaColor.white,
      appBarColor: AltaColor.darkBlue,
      centerTitle: true,
      title: AltaText(
        context: context,
        text: 'Introdaction to UI/UX',
        style: AltaTextStyle.title1,
        fontWeight: CustomFontWeight.semiBold,
        color: AltaColor.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AltaSpacing.space16),
          child: Column(
            children: [
              const SizedBox(height: AltaSpacing.space100),
              const Align(
                alignment: Alignment.center,
                child: AltaLogo(
                  imgPath:
                      'assets/images/login_section/png/alterra_blue_logo.png',
                  width: 280,
                  height: 168,
                  alignment: Alignment.center,
                ),
              ),
              const SizedBox(height: AltaSpacing.space40),
              AltaText(
                context: context,
                text: 'Thank you!',
                style: AltaTextStyle.headline1,
                fontWeight: CustomFontWeight.normal,
                color: AltaColor.black,
              ),
              const SizedBox(height: AltaSpacing.space12),
              AltaText(
                context: context,
                text:
                    'Thank you for sharing your thoughts.\nWe appreciate your feedback!',
                style: AltaTextStyle.body1,
                fontWeight: CustomFontWeight.light,
                color: AltaColor.darkBlue,
                textAlign: TextAlign.center,
              ),
              const Spacer(flex: 1),
              TextButton.icon(
                onPressed: () =>
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const MainHomePage(),
                )),
                icon: AltaText(
                  context: context,
                  text: 'Go to Home',
                  style: AltaTextStyle.body1,
                  fontWeight: CustomFontWeight.light,
                  color: AltaColor.darkBlue,
                ),
                label: const AltaSvg(
                  svgPath:
                      'assets/icon/homepage_section/svg/next_button_icon.svg',
                  width: 26,
                  height: 20,
                  colorFilter: ColorFilter.mode(
                    AltaColor.tangerine,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
