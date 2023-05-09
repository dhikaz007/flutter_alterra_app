import 'package:flutter/material.dart';

import '../../../../../utils/alta_constants.dart';
import '../../../../../utils/alta_widgets.dart';
import 'widget/edit_profile_widgets.dart';

class EditProfilePage extends StatelessWidget {
  final String name;
  final String email;
  const EditProfilePage({super.key, required this.name, required this.email});

  static String newName = '';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const AltaEditProfileBackground(),
        AltaScaffold(
          isAppbar: AppBarVisibility.on,
          appBarColor: Colors.transparent,
          scaffoldColor: Colors.transparent,
          leadingAsset: 'assets/icon/homepage_section/svg/arrow_white.svg',
          leadingWidth: 24,
          leadingHeight: 24,
          onPressed: () => Navigator.of(context).pop(true),
          body: Padding(
            padding: const EdgeInsets.only(
                left: AltaSpacing.space32, right: AltaSpacing.space36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AltaSpacing.space20),
                AltaText(
                    context: context,
                    text: 'Profile',
                    style: AltaTextStyle.headline2,
                    color: AltaColor.white,
                    fontWeight: CustomFontWeight.semiBold),
                const SizedBox(height: AltaSpacing.space16),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 37.5,
                      backgroundColor: AltaColor.tangerine,
                      child: CircleAvatar(
                        radius: 35.5,
                        backgroundImage: const AssetImage(
                          'assets/images/login_section/png/profile_avatar.png',
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: -17,
                              right: -15,
                              child: AltaIconButton(
                                svgAsset:
                                    'assets/icon/homepage_section/svg/edit_profile_icon.svg',
                                color: AltaColor.white,
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: AltaSpacing.space12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AltaText(
                          context: context,
                          text: name,
                          style: AltaTextStyle.title3,
                          color: AltaColor.white,
                          fontWeight: CustomFontWeight.bold,
                        ),
                        const SizedBox(height: AltaSpacing.space8),
                        AltaText(
                          context: context,
                          text: email,
                          style: AltaTextStyle.body1,
                          color: AltaColor.white,
                          fontWeight: CustomFontWeight.light,
                        ),
                        const SizedBox(width: AltaSpacing.space12),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: AltaSpacing.space84),
                AltaText(
                  context: context,
                  text: 'Account settings',
                  style: AltaTextStyle.title3,
                  color: AltaColor.darkBlue,
                  fontWeight: CustomFontWeight.medium,
                ),
                const SizedBox(height: AltaSpacing.space16),
                AccountSettingList(
                  title: 'Nama',
                  content: name,
                ),
                const SizedBox(height: AltaSpacing.space32),
                const AccountSettingList(
                  title: 'Nomor Handphone',
                  content: '0811222777111',
                ),
                const SizedBox(height: AltaSpacing.space32),
                AccountSettingList(
                  title: 'Alamat Email',
                  content: email,
                ),
                const SizedBox(height: AltaSpacing.space108),
                Row(
                  children: [
                    Expanded(
                      child: AltaPrimaryButton(
                        backgroundColor:
                            MaterialStateProperty.all(AltaColor.tangerine),
                        onPressed: () {},
                        borderRadius: AltaBorderRadius.radius10,
                        paddingHorizontal: AltaSpacing.space28,
                        paddingVertical: AltaSpacing.space16,
                        child: AltaText(
                          context: context,
                          text: 'Simpan',
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
      ],
    );
  }
}
