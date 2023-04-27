import 'package:flutter/material.dart';

import '../../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../../utils/constant/alta_color.dart';
import '../../../../../../utils/constant/alta_spacing.dart';
import '../../../../../../utils/widgets/alta_primary_button.dart';
import '../../../../../../utils/widgets/alta_text.dart';

class CardScheduleWidget extends StatelessWidget {
  final String titleCourse;
  final String numberBatch;
  final String startDate;
  final String timeCourse;
  const CardScheduleWidget({
    super.key,
    required this.titleCourse,
    required this.numberBatch,
    required this.startDate,
    required this.timeCourse,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: AltaColor.gray,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AltaBorderRadius.radius8),
      ),
      child: Container(
        width: 344,
        height: 132,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AltaBorderRadius.radius8),
          color: AltaColor.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(AltaSpacing.space16),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: AltaText(
                  context: context,
                  text: titleCourse,
                  style: AltaTextStyle.bodyH1,
                  color: AltaColor.black,
                ),
              ),
              Align(
                alignment: const Alignment(-1, -0.55),
                child: AltaText(
                  context: context,
                  text: numberBatch,
                  style: AltaTextStyle.bodyH2,
                  color: AltaColor.darkGray,
                ),
              ),
              Align(
                alignment: const Alignment(-1, 1),
                child: AltaText(
                  context: context,
                  text: 'Start:',
                  style: AltaTextStyle.bodyH1,
                  color: AltaColor.black,
                ),
              ),
              Align(
                alignment: const Alignment(-0.65, 1),
                child: AltaText(
                  context: context,
                  text: startDate,
                  style: AltaTextStyle.bodyH2,
                  color: AltaColor.darkGray,
                ),
              ),
              Align(
                alignment: const Alignment(0, -0.2),
                child: AltaText(
                  context: context,
                  text: 'Senin - Jumat:',
                  style: AltaTextStyle.bodyH1,
                  color: AltaColor.black,
                ),
              ),
              Align(
                alignment: const Alignment(0, 0.2),
                child: AltaText(
                  context: context,
                  text: timeCourse,
                  style: AltaTextStyle.bodyH2,
                  color: AltaColor.darkGray,
                ),
              ),
              Align(
                alignment: const Alignment(1, 0),
                child: AltaPrimaryButton(
                  backgroundColor:
                      MaterialStateProperty.all(AltaColor.tangerine),
                  borderRadius: 8,
                  paddingVertical: 10,
                  paddingHorizontal: 20,
                  onPressed: () => debugPrint('TAP Daftar'),
                  child: AltaText(
                    context: context,
                    text: 'Daftar',
                    style: AltaTextStyle.bodyH1,
                    color: AltaColor.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
