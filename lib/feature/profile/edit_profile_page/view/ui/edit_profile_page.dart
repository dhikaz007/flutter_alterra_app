import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../utils/alta_constants.dart';
import '../../../../../utils/alta_widgets.dart';
import '../../../../../utils/widgets/alta_edit_profile_background.dart';
import '../widget/account_setting_list.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const AltaEditProfileBackground(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.only(left: 30, right: 36, top: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: SvgPicture.asset(
                      'assets/images/svg/icons/arrow_white.svg',
                    ),
                  ),
                ),
                const SizedBox(height: AltaSpacing.space48),
                AltaText(
                    context: context,
                    text: 'Profile',
                    style: AltaTextStyle.headlineH1a,
                    color: AltaColor.white),
                const SizedBox(height: AltaSpacing.space16),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 37.5,
                      backgroundColor: AltaColor.tangerine,
                      child: CircleAvatar(
                        radius: 35.5,
                        backgroundImage:
                            AssetImage('assets/images/png/profile_avatar.png'),
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
                        const SizedBox(height: AltaSpacing.space8),
                        Row(
                          children: [
                            AltaText(
                              context: context,
                              text: 'Details',
                              style: AltaTextStyle.bodyH2,
                              color: AltaColor.tangerine,
                            ),
                            const SizedBox(width: AltaSpacing.space12),
                            SvgPicture.asset(
                                'assets/images/svg/icons/arrow.svg')
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: AltaSpacing.space85),
                AltaText(
                    context: context,
                    text: 'Account settings',
                    style: AltaTextStyle.titleH2,
                    color: AltaColor.darkBlue),
                const SizedBox(height: AltaSpacing.space16),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        AccountSettingList(
                          name: 'Nama',
                          onChanged: (String value) {},
                          onPressed: () {},
                        ),
                        const SizedBox(height: AltaSpacing.space32),
                        AccountSettingList(
                          name: 'Nomor Handphone',
                          onChanged: (String value) {},
                          onPressed: () {},
                        ),
                        const SizedBox(height: AltaSpacing.space32),
                        AccountSettingList(
                          name: 'Alamat Email',
                          onChanged: (String value) {},
                          onPressed: () {},
                        ),
                        const SizedBox(height: AltaSpacing.space32),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 154,
          left: 91,
          child: CircleAvatar(
            backgroundColor: AltaColor.white,
            radius: 5,
            child: SvgPicture.asset(
                'assets/images/svg/icons/icon_edit_profile.svg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: AltaPrimaryButton(
                    backgroundColor:
                        MaterialStateProperty.all(AltaColor.tangerine),
                    onPressed: () {},
                    borderRadius: AltaBorderRadius.radius10,
                    paddingHorizontal: AltaSpacing.space28,
                    paddingVertical: AltaSpacing.space18,
                    child: AltaText(
                        context: context,
                        text: 'Simpan',
                        style: AltaTextStyle.titleH1,
                        color: AltaColor.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
