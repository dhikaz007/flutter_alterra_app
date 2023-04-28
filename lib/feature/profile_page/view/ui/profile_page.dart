import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/alta_constants.dart';
import '../../../../utils/alta_widgets.dart';
import '../../../../utils/widgets/alta_dialogs.dart';

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
                const SizedBox(height: AltaSpacing.space43),
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
                          const AltaProfileComponent(
                            text: 'Edit Profile',
                            style: AltaTextStyle.titleH2,
                          ),
                          const SizedBox(height: AltaSpacing.space12),
                          const AltaDivider(),
                          const SizedBox(height: AltaSpacing.space12),
                          AltaText(
                              context: context,
                              text: 'Lengkapi data diri Anda',
                              style: AltaTextStyle.bodyH1,
                              color: AltaColor.darkGray),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: AltaSpacing.space32),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 24),
                  child: Column(
                    children: const [
                      AltaListProfile(
                        svgPicture: 'assets/images/svg/icons/class_icon.svg',
                        text: 'Kelas Saya',
                      ),
                      AltaListProfile(
                        svgPicture:
                            'assets/images/svg/icons/sertificate_icon.svg',
                        text: 'Sertifikat Saya',
                      ),
                      AltaListProfile(
                        svgPicture: 'assets/images/svg/icons/about_icon.svg',
                        text: 'Tentang Alterra',
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
                'assets/images/svg/icons/arrow_white.svg',
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
                  paddingVertical: AltaSpacing.space18,
                  child: AltaText(
                      context: context,
                      text: 'Keluar',
                      style: AltaTextStyle.titleH1,
                      color: AltaColor.white),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
