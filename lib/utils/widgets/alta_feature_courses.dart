import 'package:flutter/material.dart';
import 'package:flutter_alterra_app/utils/widgets/alta_text.dart';

import '../constant/alta_spacing.dart';

class AltaFeatureCourses extends StatelessWidget {
  final String name;
  const AltaFeatureCourses({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        // width: double.infinity,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  name,
                ),
              ),
            ],
          ),
        ));
  }
}

// Row(
//                   children: [
//                     Card(
//                       child: Column(
//                         children: [
//                           Image.asset(
//                             'assets/images/png/ui_ux.png',
//                             width: 202,
//                             height: 116,
//                           ),
//                           AltaText(
//                               context: context,
//                               text: 'Program Flexi UI/UX',
//                               style: AltaTextStyle.titleH2,
//                               color: AltaColor.black),
//                           const SizedBox(height: AltaSpacing.space5),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),