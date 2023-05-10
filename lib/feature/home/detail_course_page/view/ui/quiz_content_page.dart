import 'package:flutter/material.dart';

import '../../../../../utils/alta_constant.dart';
import '../../../../../utils/alta_widgets.dart';
import '../widget/quiz_content_list_widget.dart';

class QuizContentPage extends StatelessWidget {
  const QuizContentPage({super.key});

  static final ValueNotifier<ValueQuiz> _selectedRadioTile =
      ValueNotifier(ValueQuiz.none);
  static final ValueNotifier<ValueQuiz> _selectedRadioTile2 =
      ValueNotifier(ValueQuiz.none);
  static final ValueNotifier<ValueQuiz> _selectedRadioTile3 =
      ValueNotifier(ValueQuiz.none);

  static final ValueNotifier<bool> _isSelected = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AltaSpacing.space8),
        ValueListenableBuilder(
          valueListenable: _selectedRadioTile,
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
                _selectedRadioTile.value = value ?? ValueQuiz.none,
          ),
        ),
        const SizedBox(height: AltaSpacing.space12),
        ValueListenableBuilder(
          valueListenable: _selectedRadioTile2,
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
                _selectedRadioTile2.value = value ?? ValueQuiz.none,
          ),
        ),
        const SizedBox(height: AltaSpacing.space12),
        ValueListenableBuilder(
          valueListenable: _selectedRadioTile3,
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
              (_selectedRadioTile3.value = value ?? ValueQuiz.none);
              if (_selectedRadioTile3.value.name.isNotEmpty) {
                _isSelected.value = true;
              } else {
                _isSelected.value = false;
              }
            },
          ),
        ),
        const SizedBox(height: AltaSpacing.space16),
        Row(
          children: [
            Expanded(
              child: ValueListenableBuilder(
                valueListenable: _isSelected,
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
