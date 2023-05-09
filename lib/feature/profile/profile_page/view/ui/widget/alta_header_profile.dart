import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../utils/alta_constant.dart';
import '../../../../../../utils/alta_widgets.dart';
import '../../../../../home/home_page/view_model/cubit/homepage_cubit.dart';

class AltaHeaderProfile extends StatelessWidget {

  const AltaHeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          backgroundColor: AltaColor.tangerine,
          radius: 62,
          child: CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/login_section/png/profile_avatar.png',
            ),
            radius: 60,
          ),
        ),
        const SizedBox(width: AltaSpacing.space12),
        AltaText(
          context: context,
          text: context.read<HomepageCubit>().getUserName(),
          style: AltaTextStyle.title3,
          color: AltaColor.white,
          fontWeight: CustomFontWeight.semiBold,
        ),
        AltaText(
          context: context,
          text: context.read<HomepageCubit>().getEmailUser(),
          style: AltaTextStyle.body1,
          color: AltaColor.white,
          fontWeight: CustomFontWeight.medium,
        ),
      ],
    );
  }
}
