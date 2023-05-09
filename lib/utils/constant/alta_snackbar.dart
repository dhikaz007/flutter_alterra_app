import 'package:flutter/material.dart';

import '../alta_constant.dart';
import '../alta_widgets.dart';

class AltaSnackBar{
  static getAltaSnackBar(BuildContext context, String content, Color color){
    ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: AltaText(
                context: context,
                text: content,
                style: AltaTextStyle.body1,
                fontWeight: CustomFontWeight.semiBold,
                color: AltaColor.white,
              ),
              backgroundColor: color,
              behavior: SnackBarBehavior.fixed,
              padding: const EdgeInsets.all(AltaSpacing.space16),
              duration: const Duration(seconds: 2),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AltaBorderRadius.radius8),
                  topRight: Radius.circular(AltaBorderRadius.radius8),
                ),
              ),
            ),
          );
  }
}