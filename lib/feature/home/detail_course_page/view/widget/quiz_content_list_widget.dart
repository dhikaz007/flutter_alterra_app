import 'package:flutter/material.dart';

import '../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_text.dart';

enum ValueQuiz { none, firstValue, secondValue, thirdValue, fourthValue }

class QuizContentListWidget extends StatelessWidget {
  final String titleQuiz;
  final String firstValueQuiz;
  final String secondValueQuiz;
  final String thirdValueQuiz;
  final String fourthValueQuiz;
  final ValueQuiz value1;
  final ValueQuiz value2;
  final ValueQuiz value3;
  final ValueQuiz value4;
  final ValueQuiz groupValue;
  final ValueChanged<ValueQuiz?>? onChanged;
  const QuizContentListWidget({
    super.key,
    required this.titleQuiz,
    required this.firstValueQuiz,
    required this.secondValueQuiz,
    required this.thirdValueQuiz,
    required this.fourthValueQuiz,
    required this.value1,
    required this.value2,
    required this.value3,
    required this.value4,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AltaText(
          context: context,
          text: titleQuiz,
          style: AltaTextStyle.bodyH1,
          color: AltaColor.darkBlue,
        ),
        const SizedBox(height: AltaSpacing.space12),
        RadioListTile(
          value: value1,
          groupValue: groupValue,
          contentPadding: const EdgeInsets.all(AltaSpacing.zero),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AltaBorderRadius.radius4),
            side: const BorderSide(color: AltaColor.gray),
          ),
          title: AltaText(
            context: context,
            text: firstValueQuiz,
            style: AltaTextStyle.bodyH1,
            color: AltaColor.darkBlue,
          ),
          onChanged: onChanged,
        ),
        const SizedBox(height: AltaSpacing.space12),
        RadioListTile(
          value: value2,
          groupValue: groupValue,
          contentPadding: const EdgeInsets.all(AltaSpacing.zero),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AltaBorderRadius.radius4),
            side: const BorderSide(color: AltaColor.gray),
          ),
          title: AltaText(
            context: context,
            text: secondValueQuiz,
            style: AltaTextStyle.bodyH1,
            color: AltaColor.darkBlue,
          ),
          onChanged: onChanged,
        ),
        const SizedBox(height: AltaSpacing.space12),
        RadioListTile(
          value: value3,
          groupValue: groupValue,
          contentPadding: const EdgeInsets.all(AltaSpacing.zero),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AltaBorderRadius.radius4),
            side: const BorderSide(color: AltaColor.gray),
          ),
          title: AltaText(
            context: context,
            text: thirdValueQuiz,
            style: AltaTextStyle.bodyH1,
            color: AltaColor.darkBlue,
          ),
          onChanged: onChanged,
        ),
        const SizedBox(height: AltaSpacing.space12),
        RadioListTile(
          value: value4,
          groupValue: groupValue,
          contentPadding: const EdgeInsets.all(AltaSpacing.zero),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AltaBorderRadius.radius4),
            side: const BorderSide(color: AltaColor.gray),
          ),
          title: AltaText(
            context: context,
            text: fourthValueQuiz,
            style: AltaTextStyle.bodyH1,
            color: AltaColor.darkBlue,
          ),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
