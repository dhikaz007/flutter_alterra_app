import 'package:flutter/material.dart';

import '../../../../../../../utils/alta_constants.dart';
import '../../../../../../../utils/alta_widgets.dart';

class AltaDialogs extends StatelessWidget {
  const AltaDialogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(46),
        child: Container(
          width: 300,
          height: 168,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: AltaColor.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AltaText(
                context: context,
                text: 'Yakin Untuk Keluar?',
                style: AltaTextStyle.body1,
                color: AltaColor.darkBlue,
                fontWeight: CustomFontWeight.semiBold,
              ),
              const SizedBox(height: AltaSpacing.space20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AltaPrimaryButton(
                    onPressed: () {},
                    borderRadius: AltaBorderRadius.radius10,
                    paddingVertical: AltaSpacing.space12,
                    paddingHorizontal: AltaSpacing.space28,
                    side: MaterialStateProperty.all(
                        const BorderSide(color: AltaColor.tangerine)),
                    backgroundColor:
                        MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return AltaColor.tangerine;
                      }
                      return AltaColor.white;
                    }),
                    child: AltaText(
                      context: context,
                      text: 'Ya',
                      style: AltaTextStyle.body1,
                      color: AltaColor.black,
                      fontWeight: CustomFontWeight.medium,
                    ),
                  ),
                  AltaPrimaryButton(
                    onPressed: () {},
                    borderRadius: AltaBorderRadius.radius10,
                    paddingVertical: AltaSpacing.space12,
                    paddingHorizontal: AltaSpacing.space16,
                    side: MaterialStateProperty.all(
                        const BorderSide(color: AltaColor.tangerine)),
                    backgroundColor:
                        MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return AltaColor.tangerine;
                      }
                      return AltaColor.white;
                    }),
                    child: AltaText(
                      context: context,
                      text: 'Tidak',
                      style: AltaTextStyle.body1,
                      color: AltaColor.black,
                      fontWeight: CustomFontWeight.medium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
