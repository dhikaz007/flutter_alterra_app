import 'package:flutter/material.dart';

import '../../../../../utils/alta_constant.dart';
import '../../../../../utils/alta_widgets.dart';
import '../../../about_alterra_page/view/ui/about_alterra_page.dart';
import '../../../my_course_page/view/ui/my_course_page.dart';
import '../../../my_sertificate/view/ui/my_sertificate.dart';
import '../../../edit_profile_page/view/ui/edit_profile_page.dart';
import 'widget/profile_widgets.dart';

class ProfilePage extends StatelessWidget {
  final ScrollController? scrollController;
  const ProfilePage({super.key, this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const AltaHomePageBackground(),
        AltaScaffold(
          isLeading: LeadingVisibility.on,
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
              controller: scrollController,
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const AltaHeaderProfile(),
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
                                  builder: (_) => const EditProfilePage(),
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
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const MyCoursePage())),
                  ),
                  AltaListProfile(
                    iconProfiles:
                        'assets/icon/homepage_section/svg/sertificate_icon.svg',
                    text: 'Sertifikat Saya',
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const MySertificate())),
                  ),
                  AltaListProfile(
                    iconProfiles:
                        'assets/icon/homepage_section/svg/about_icon.svg',
                    text: 'Tentang Alterra',
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const AboutAlterraPage())),
                  ),
                  const SizedBox(height: AltaSpacing.space96),
                  Row(
                    children: [
                      Expanded(
                        child: AltaPrimaryButton(
                          backgroundColor:
                              MaterialStateProperty.all(AltaColor.tangerine),
                          onPressed: () async {
                            await showDialog(
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
