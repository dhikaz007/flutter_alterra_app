import 'package:flutter/material.dart';

import '../../../../../utils/alta_constants.dart';
import '../../../../../utils/alta_widgets.dart';
import '../../../edit_profile_page/view/ui/edit_profile_page.dart';
import 'widget/profile_widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final String _name = 'Nahdy Dailamy Batewa';
  final String _email = 'nadewa@alterra.com';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const AltaHomePageBackground(),
        AltaScaffold(
          isAppbar: AppBarVisibility.on,
          appBarColor: Colors.transparent,
          scaffoldColor: Colors.transparent,
          leadingAsset: 'assets/icon/homepage_section/svg/arrow_white.svg',
          leadingWidth: 24,
          leadingHeight: 24,
          body: Padding(
            padding: const EdgeInsets.only(
              right: AltaSpacing.space16,
              left: AltaSpacing.space16,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AltaHeaderProfile(name: _name, email: _email),
                  const SizedBox(height: AltaSpacing.space44),
                  Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(AltaBorderRadius.radius12),
                      side: const BorderSide(width: 1, color: AltaColor.gray),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(AltaSpacing.space16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AltaProfileComponent(
                            text: 'Edit Profile',
                            style: AltaTextStyle.title3,
                            iconArrowBlue:
                                'assets/icon/homepage_section/svg/arrow_blue.svg',
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => EditProfilePage(
                                    name: _name,
                                    email: _email,
                                  ),
                                ),
                              );
                            },
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
                  const SizedBox(height: AltaSpacing.space32),
                  AltaListProfile(
                    iconProfiles:
                        'assets/icon/homepage_section/svg/class_icon.svg',
                    text: 'Kelas Saya',
                    onTap: () {},
                  ),
                  AltaListProfile(
                    iconProfiles:
                        'assets/icon/homepage_section/svg/sertificate_icon.svg',
                    text: 'Sertifikat Saya',
                    onTap: () {},
                  ),
                  AltaListProfile(
                    iconProfiles:
                        'assets/icon/homepage_section/svg/about_icon.svg',
                    text: 'Tentang Alterra',
                    onTap: () {},
                  ),
                  const SizedBox(height: AltaSpacing.space144),
                  Row(
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
                              },
                            );
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
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
