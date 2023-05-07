import 'package:flutter/material.dart';

import '../../../../../../utils/constant/alta_color.dart';

class AltaDivider extends StatelessWidget {
  const AltaDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AltaColor.darkGray,
      height: 0,
      indent: 0,
      thickness: 1,
    );
  }
}