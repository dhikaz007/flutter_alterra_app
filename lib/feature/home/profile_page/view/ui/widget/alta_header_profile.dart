import 'package:flutter/material.dart';

<<<<<<<< HEAD:lib/feature/home/profile/profile_page/view/ui/widget/alta_header_profile.dart
import '../../../../../../../utils/alta_constants.dart';
import '../../../../../../../utils/widgets/alta_text.dart';
========
import '../../../../../../utils/alta_constant.dart';
import '../../../../../../utils/alta_widgets.dart';
>>>>>>>> ce4b1071303eeaf6beb160a10cefb0765958db76:lib/feature/home/profile_page/view/ui/widget/alta_header_profile.dart

class AltaHeaderProfile extends StatelessWidget {
  final String name;
  final String email;
  const AltaHeaderProfile({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          backgroundColor: AltaColor.tangerine,
          radius: 62,
          child: CircleAvatar(
            backgroundImage: AssetImage(
<<<<<<<< HEAD:lib/feature/home/profile/profile_page/view/ui/widget/alta_header_profile.dart
                'assets/images/login_section/png/profile_avatar.png'),
========
              'assets/images/login_section/png/profile_avatar.png',
            ),
>>>>>>>> ce4b1071303eeaf6beb160a10cefb0765958db76:lib/feature/home/profile_page/view/ui/widget/alta_header_profile.dart
            radius: 60,
          ),
        ),
        const SizedBox(height: AltaSpacing.space4),
        AltaText(
          context: context,
<<<<<<<< HEAD:lib/feature/home/profile/profile_page/view/ui/widget/alta_header_profile.dart
          text: 'Nahdy Dailamy Batewa',
========
          text: name,
>>>>>>>> ce4b1071303eeaf6beb160a10cefb0765958db76:lib/feature/home/profile_page/view/ui/widget/alta_header_profile.dart
          style: AltaTextStyle.title3,
          color: AltaColor.white,
          fontWeight: CustomFontWeight.semiBold,
        ),
        AltaText(
          context: context,
<<<<<<<< HEAD:lib/feature/home/profile/profile_page/view/ui/widget/alta_header_profile.dart
          text: 'nadewa@alterra.com',
========
          text: email,
>>>>>>>> ce4b1071303eeaf6beb160a10cefb0765958db76:lib/feature/home/profile_page/view/ui/widget/alta_header_profile.dart
          style: AltaTextStyle.body1,
          color: AltaColor.white,
          fontWeight: CustomFontWeight.medium,
        ),
      ],
    );
  }
}
