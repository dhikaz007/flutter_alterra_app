import 'package:flutter/material.dart';
import 'package:flutter_alterra_app/feature/home/home_page/view/ui/home_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_scaffold.dart';
import '../../../../../utils/widgets/alta_text.dart';
import '../../../../../utils/constant/alta_color.dart';

class FeedbackCompletePage extends StatelessWidget {
  const FeedbackCompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AltaScaffold(
      appBarColor: AltaColor.darkBlue,
      title: AltaText(
        context: context,
        text: 'Introdaction to UI/UX',
        style: AltaTextStyle.headlineH2,
        color: AltaColor.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AltaSpacing.space16),
          child: Column(
            children: [
              const SizedBox(height: AltaSpacing.space100),
              Image.asset(
                'assets/images/login_section/png/alterra_blue_logo.png',
                width: 280,
                height: 168,
              ),
              const SizedBox(height: AltaSpacing.space40),
              AltaText(
                context: context,
                text: 'Thank you!',
                style: AltaTextStyle.displayH1,
                color: AltaColor.black,
              ),
              const SizedBox(height: AltaSpacing.space12),
              AltaText(
                context: context,
                text:
                    'Thank you for sharing your thoughts. We appreciate your feedback!',
                style: AltaTextStyle.bodyH1,
                color: AltaColor.darkBlue,
              ),
              const Spacer(flex: 1),
              TextButton.icon(
                onPressed: () =>
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const HomePage(email: 'nadewa@alterra.com'),
                )),
                icon: AltaText(
                  context: context,
                  text: 'Go to Home',
                  style: AltaTextStyle.bodyH1,
                  color: AltaColor.darkBlue,
                ),
                label: SvgPicture.asset(
                  'assets/icon/homepage_section/svg/next_button_icon.svg',
                  width: 26,
                  height: 20,
                  colorFilter: const ColorFilter.mode(
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
