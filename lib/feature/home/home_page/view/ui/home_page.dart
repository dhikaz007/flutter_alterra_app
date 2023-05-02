import 'package:flutter/material.dart';

import '../../../../../utils/alta_constants.dart';
import '../../../../../utils/alta_widgets.dart';

class HomePage extends StatelessWidget {
  final ScrollController? scrollController;
  const HomePage({super.key, this.scrollController});

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
                      backgroundImage:
                          AssetImage('assets/images/png/profile_avatar.png'),
                    ),
                    const SizedBox(width: AltaSpacing.space12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AltaText(
                          context: context,
                          text: 'Nahdy Dailamy Batewa',
                          style: AltaTextStyle.title3,
                          color: AltaColor.white,
                          fontWeight: CustomFontWeight.bold,
                        ),
                        AltaText(
                          context: context,
                          text: 'nadewa@alterra.com',
                          style: AltaTextStyle.body2,
                          color: AltaColor.white,
                          fontWeight: CustomFontWeight.normal,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: AltaSpacing.space24),
                const AltaSearchWidget(
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                ),
                const SizedBox(height: AltaSpacing.space20),
                Image.asset(
                  'assets/images/png/flash_sale.png',
                ),
                const SizedBox(height: AltaSpacing.space20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: AltaText(
                    context: context,
                    text: 'Courses',
                    style: AltaTextStyle.title3,
                    color: AltaColor.black,
                    fontWeight: CustomFontWeight.bold,
                  ),
                ),
                const SizedBox(height: AltaSpacing.space20),
                // AltaFeatureCourses(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
