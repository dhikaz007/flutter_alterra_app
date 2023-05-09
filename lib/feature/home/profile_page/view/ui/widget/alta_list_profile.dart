import 'package:flutter/material.dart';

<<<<<<<< HEAD:lib/feature/home/profile/profile_page/view/ui/widget/alta_list_profile.dart
import '../../../../../../../utils/alta_widgets.dart';
========
import '../../../../../../utils/alta_widgets.dart';
>>>>>>>> ce4b1071303eeaf6beb160a10cefb0765958db76:lib/feature/home/profile_page/view/ui/widget/alta_list_profile.dart
import 'profile_widgets.dart';

class AltaListProfile extends StatelessWidget {
  final String iconProfiles;
  final String text;
<<<<<<<< HEAD:lib/feature/home/profile/profile_page/view/ui/widget/alta_list_profile.dart
  final VoidCallback? onTap;
  const AltaListProfile(
      {super.key, required this.iconProfiles, required this.text, this.onTap});
========

  final VoidCallback? onTap;
  const AltaListProfile({
    super.key,
    required this.iconProfiles,
    required this.text,
    this.onTap,
  });
>>>>>>>> ce4b1071303eeaf6beb160a10cefb0765958db76:lib/feature/home/profile_page/view/ui/widget/alta_list_profile.dart

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          dense: true,
          minLeadingWidth: 8,
<<<<<<<< HEAD:lib/feature/home/profile/profile_page/view/ui/widget/alta_list_profile.dart
          leading: SvgPicture.asset(
            iconProfiles,
========
          leading: AltaSvg(
            svgPath: iconProfiles,
>>>>>>>> ce4b1071303eeaf6beb160a10cefb0765958db76:lib/feature/home/profile_page/view/ui/widget/alta_list_profile.dart
            width: 24,
            height: 24,
          ),
          title: AltaProfileComponent(
<<<<<<<< HEAD:lib/feature/home/profile/profile_page/view/ui/widget/alta_list_profile.dart
              text: text,
              style: AltaTextStyle.title3,
              iconArrowBlue: 'assets/icon/homepage_section/svg/arrow_blue.svg',
              onTap: onTap),
========
            text: text,
            style: AltaTextStyle.title3,
            iconArrowBlue: 'assets/icon/homepage_section/svg/arrow_blue.svg',
            onTap: onTap,
          ),
>>>>>>>> ce4b1071303eeaf6beb160a10cefb0765958db76:lib/feature/home/profile_page/view/ui/widget/alta_list_profile.dart
          subtitle: const AltaDivider(),
        ),
      ],
    );
  }
}
