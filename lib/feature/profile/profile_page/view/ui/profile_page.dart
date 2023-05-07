import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../utils/alta_constants.dart';
import '../../../../../../utils/alta_widgets.dart';
import '../../../about_alterra_page/view/ui/about_alterra_page.dart';
import 'widget/profile_widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        const AltaHomePageBackground(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                const AltaHeaderProfile(),
                const SizedBox(height: AltaSpacing.space44),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side:
                            const BorderSide(width: 1, color: AltaColor.gray)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 16, left: 16, right: 16, bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AltaProfileComponent(
                            text: 'Edit Profile',
                            style: AltaTextStyle.title3,
                            iconArrowBlue:
                                'assets/icon/homepage_section/svg/arrow_blue.svg',
                            onTap: () {},
                          ),
                          const SizedBox(height: AltaSpacing.space12),
                          const AltaDivider(),
                          const SizedBox(height: AltaSpacing.space12),
                          AltaText(
                            context: context,
                            text: 'Lengkapi data diri Anda',
                            style: AltaTextStyle.body1,
                            color: AltaColor.darkGray,
                            fontWeight: CustomFontWeight.medium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: AltaSpacing.space32),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 24),
                  child: Column(
                    children: [
                      const AltaListProfile(
                        iconProfiles:
                            'assets/icon/homepage_section/svg/class_icon.svg',
                        text: 'Kelas Saya',
                      ),
                      AltaListProfile(
                        iconProfiles:
                            'assets/icon/homepage_section/svg/sertificate_icon.svg',
                        onTap: () {},
                        text: 'Sertifikat Saya',
                      ),
                      AltaListProfile(
                        iconProfiles:
                            'assets/icon/homepage_section/svg/about_icon.svg',
                        text: 'Tentang Alterra',
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const AboutAlterraPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, top: 34),
          child: Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                'assets/icon/homepage_section/svg/arrow_white.svg',
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: Row(
            children: [
              Expanded(
                child: AltaPrimaryButton(
                  backgroundColor:
                      MaterialStateProperty.all(AltaColor.tangerine),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AltaDialogs();
                        });
                  },
                  borderRadius: AltaBorderRadius.radius10,
                  paddingHorizontal: AltaSpacing.space28,
                  paddingVertical: AltaSpacing.space16,
                  child: AltaText(
                    context: context,
                    text: 'Keluar',
                    style: AltaTextStyle.title2,
                    color: AltaColor.white,
                    fontWeight: CustomFontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
