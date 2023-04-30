import 'package:flutter/material.dart';

import '../../../../../../utils/alta_constants.dart';

class ContributeWidget extends StatelessWidget {
  final String title;
  final String sub;
  const ContributeWidget({super.key, required this.title, required this.sub});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: AltaColor.darkBlue),
        ),
        const SizedBox(height: AltaSpacing.space20),
        Text(
          sub,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
              color: AltaColor.darkBlue),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
