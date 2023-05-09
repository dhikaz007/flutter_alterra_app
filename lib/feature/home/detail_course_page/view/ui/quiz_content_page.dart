import 'package:flutter/material.dart';

import '../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_primary_button.dart';
import '../../../../../utils/widgets/alta_text.dart';
import '../../../../../utils/constant/alta_color.dart';

import '../widget/quiz_content_list_widget.dart';

class QuizContentPage extends StatelessWidget {
  const QuizContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<ValueQuiz> selectedRadioTile =
        ValueNotifier(ValueQuiz.none);
    final ValueNotifier<ValueQuiz> selectedRadioTile2 =
        ValueNotifier(ValueQuiz.none);
    final ValueNotifier<ValueQuiz> selectedRadioTile3 =
        ValueNotifier(ValueQuiz.none);

    final ValueNotifier<bool> isSelected = ValueNotifier(false);

    return Column(
      children: [
        const SizedBox(height: AltaSpacing.space8),
        ValueListenableBuilder(
          valueListenable: selectedRadioTile,
          builder: (context, selectedRadioTileValue, _) =>
              QuizContentListWidget(
            titleQuiz:
                'Manakah yang bukan merupakan software yang digunakan dalam UI/UX ?',
            firstValueQuiz: 'React',
            secondValueQuiz: 'Zeplin',
            thirdValueQuiz: 'Figma',
            fourthValueQuiz: 'Maze',
            value1: ValueQuiz.firstValue,
            value2: ValueQuiz.secondValue,
            value3: ValueQuiz.thirdValue,
            value4: ValueQuiz.fourthValue,
            groupValue: selectedRadioTileValue,
            onChanged: (value) =>
                selectedRadioTile.value = value ?? ValueQuiz.none,
          ),
        ),
        const SizedBox(height: AltaSpacing.space12),
        ValueListenableBuilder(
          valueListenable: selectedRadioTile2,
          builder: (context, selectedRadioTile2Value, _) =>
              QuizContentListWidget(
            titleQuiz: 'Manakah yang bukan merupakan basic rule pada UI/UX ?',
            firstValueQuiz: 'Memahami User',
            secondValueQuiz: 'Menggunakan teknologi terbaru',
            thirdValueQuiz: 'Kejelasan sistem',
            fourthValueQuiz: 'Menyerupai dunia nyata',
            value1: ValueQuiz.firstValue,
            value2: ValueQuiz.secondValue,
            value3: ValueQuiz.thirdValue,
            value4: ValueQuiz.fourthValue,
            groupValue: selectedRadioTile2Value,
            onChanged: (value) =>
                selectedRadioTile2.value = value ?? ValueQuiz.none,
          ),
        ),
        const SizedBox(height: AltaSpacing.space12),
        ValueListenableBuilder(
          valueListenable: selectedRadioTile3,
          builder: (context, selectedRadioTile3Value, _) =>
              QuizContentListWidget(
            titleQuiz:
                'User testing di lakukan di tempat umum merupakan penjelasan dari ?',
            firstValueQuiz: 'Offline User Testing',
            secondValueQuiz: 'Usability  Testing',
            thirdValueQuiz: 'Geurilla User Testing',
            fourthValueQuiz: 'Online User Testing',
            value1: ValueQuiz.firstValue,
            value2: ValueQuiz.secondValue,
            value3: ValueQuiz.thirdValue,
            value4: ValueQuiz.fourthValue,
            groupValue: selectedRadioTile3Value,
            onChanged: (value) {
              (selectedRadioTile3.value = value ?? ValueQuiz.none);
              if (selectedRadioTile3.value.name.isNotEmpty) {
                isSelected.value = true;
              } else {
                isSelected.value = false;
              }
            },
          ),
        ),
        const SizedBox(height: AltaSpacing.space16),
        Row(
          children: [
            Expanded(
              child: ValueListenableBuilder(
                valueListenable: isSelected,
                builder: (context, isSelectedValue, _) => AltaPrimaryButton(
                  backgroundColor: MaterialStateProperty.resolveWith(
                    (states) => isSelectedValue == true
                        ? Colors.orange.shade700
                        : Colors.grey,
                  ),
                  paddingVertical: AltaSpacing.space20,
                  paddingHorizontal: AltaSpacing.space28,
                  borderRadius: AltaBorderRadius.radius10,
                  onPressed: () => isSelectedValue == true
                      ? debugPrint('TAPPED COMPLETE')
                      : null,
                  child: AltaText(
                    context: context,
                    text: 'COMPLETE',
                    style: AltaTextStyle.title2,
                    fontWeight: CustomFontWeight.bold,
                    color: AltaColor.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
