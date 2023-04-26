import 'package:flutter/material.dart';

import '../../../../utils/constant/alta_color.dart';
import '../../../../utils/constant/alta_spacing.dart';
import '../../../../utils/widgets/alta_homepage_background.dart';
import '../../../../utils/widgets/alta_text.dart';

class HomePage extends StatelessWidget {
  final String email;
  const HomePage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const AltaHomePageBackground(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.only(
              left: AltaSpacing.space20,
              right: AltaSpacing.space20,
              top: AltaSpacing.space44,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/login_section/png/profile_avatar.png',
                      ),
                    ),
                    const SizedBox(width: AltaSpacing.space12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AltaText(
                          context: context,
                          text: 'Nahdy Dailamy Batewa',
                          style: AltaTextStyle.titleH2,
                          color: AltaColor.white,
                        ),
                        AltaText(
                          context: context,
                          text: email,
                          style: AltaTextStyle.bodyH2,
                          color: AltaColor.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
