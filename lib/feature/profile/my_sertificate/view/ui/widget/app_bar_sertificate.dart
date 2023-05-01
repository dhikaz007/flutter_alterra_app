import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../utils/alta_constants.dart';
import '../../../../../../utils/alta_widgets.dart';

class AppBarSetificate extends StatelessWidget {
  const AppBarSetificate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AltaColor.darkBlue,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 32, bottom: 24, left: 24),
        child: Row(
          children: [
            InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: SvgPicture.asset(
                    'assets/images/svg/icons/arrow_white.svg')),
            const SizedBox(width: AltaSpacing.space28),
            AltaText(
                context: context,
                text: 'Sertifikat Saya',
                style: AltaTextStyle.headlineH2,
                color: AltaColor.white),
          ],
        ),
      ),
    );
  }
}
