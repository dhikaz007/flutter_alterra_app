import 'package:flutter/material.dart';

import '../../../../../home/home_page/view/ui/main_home_page.dart';
import '../../../../../../../utils/alta_constant.dart';
import '../../../../../../../utils/alta_widgets.dart';

class BottomSertificate extends StatelessWidget {
  const BottomSertificate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AltaText(
          context: context,
          text: 'Go to Home',
          style: AltaTextStyle.body1,
          color: AltaColor.darkBlue,
          fontWeight: CustomFontWeight.light,
        ),
        const SizedBox(width: AltaSpacing.space20),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (_) => const MainHomePage(),
            ));
          },
          child: const AltaSvg(
            svgPath: 'assets/icon/homepage_section/svg/next_button_icon.svg',
            width: 26,
            height: 20,
            colorFilter: ColorFilter.mode(
              AltaColor.tangerine,
              BlendMode.srcIn,
            ),
          ),
        ),
      ],
    );
  }
}
