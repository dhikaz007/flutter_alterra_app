import 'package:flutter/material.dart';

import '../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_primary_button.dart';
import '../../../../../utils/widgets/alta_text.dart';
import '../../../../../utils/widgets/alta_text_field.dart';
import '../widget/rating_badge_widget.dart';
import '../widget/star_rating_widget.dart';

import 'feedback_complete_page.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  static String? feedback;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isDone = ValueNotifier(false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: AltaSpacing.space16),
        AltaText(
          context: context,
          text: 'The Material',
          style: AltaTextStyle.bodyH1,
          color: AltaColor.darkBlue,
        ),
        const SizedBox(height: AltaSpacing.space8),
        AltaText(
          context: context,
          text: 'Introdaction to UI/UX',
          style: AltaTextStyle.bodyH1,
          color: AltaColor.black,
        ),
        const SizedBox(height: AltaSpacing.space4),
        AltaText(
          context: context,
          text: 'Tuesday, 18 April 2023',
          style: AltaTextStyle.bodyH2,
          color: AltaColor.black,
        ),
        const SizedBox(height: AltaSpacing.space36),
        AltaText(
          context: context,
          text: 'Rate Your Experience.',
          style: AltaTextStyle.displayH1,
          color: AltaColor.black,
        ),
        const SizedBox(height: AltaSpacing.space16),
        AltaText(
          context: context,
          text: 'Are you Satisfied with the Material?',
          style: AltaTextStyle.bodyH1,
          color: AltaColor.darkBlue,
        ),
        const SizedBox(height: AltaSpacing.space20),
        const StarRatingWidget(),
        const SizedBox(height: AltaSpacing.space16),
        const Divider(height: 1, color: Colors.grey),
        const SizedBox(height: AltaSpacing.space20),
        AltaText(
          context: context,
          text: 'How was the Material?',
          style: AltaTextStyle.bodyH1,
          color: AltaColor.darkBlue,
        ),
        const SizedBox(height: AltaSpacing.space16),
        Row(
          children: const [
            RatingBadgeWidget(
              title: 'Excellent',
              width: 100,
              height: 36,
            ),
            SizedBox(width: AltaSpacing.space8),
            RatingBadgeWidget(
              title: 'Easy to understand',
              width: 144,
              height: 36,
            ),
            SizedBox(width: AltaSpacing.space8),
            RatingBadgeWidget(
              title: 'Details',
              width: 76,
              height: 36,
            ),
          ],
        ),
        const SizedBox(height: AltaSpacing.space20),
        Row(
          children: const [
            RatingBadgeWidget(
              title: 'Good!',
              width: 72,
              height: 36,
            ),
            SizedBox(width: AltaSpacing.space8),
            RatingBadgeWidget(
              title: 'Upgrade the system',
              width: 156,
              height: 36,
            ),
          ],
        ),
        const SizedBox(height: AltaSpacing.space20),
        Row(
          children: const [
            RatingBadgeWidget(
              title: 'Helpful',
              width: 80,
              height: 36,
            ),
            SizedBox(width: AltaSpacing.space8),
            RatingBadgeWidget(
              title: 'Enjoy it!',
              width: 84,
              height: 36,
            ),
            SizedBox(width: AltaSpacing.space8),
            RatingBadgeWidget(
              title: 'Others',
              width: 76,
              height: 36,
            ),
          ],
        ),
        const SizedBox(height: AltaSpacing.space20),
        AltaTextField(
          hintText: 'Tell us how can you improve...',
          maxLines: 10,
          borderRadius: AltaBorderRadius.zero,
          focusedBorderRadius: AltaBorderRadius.zero,
          borderSide: const BorderSide(color: AltaColor.darkBlue),
          filled: true,
          fillColor: AltaColor.gray,
          onChanged: (value) {
            feedback = value;
            if (value.isEmpty) {
              isDone.value = false;
            } else {
              isDone.value = true;
            }
          },
        ),
        // TextField(
        //   maxLines: 10,
        //   decoration: InputDecoration(
        //     contentPadding: const EdgeInsets.symmetric(
        //       vertical: 12,
        //       horizontal: 14,
        //     ),
        //     border: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(AltaBorderRadius.zero),
        //       borderSide: BorderSide(color: AltaColor.darkBlue),
        //     ),
        //     focusedBorder: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(AltaBorderRadius.zero),
        //       borderSide: BorderSide(color: AltaColor.darkBlue),
        //     ),
        //     filled: true,
        //     fillColor: Colors.grey,
        //     hintText: 'Tell us how can you improve...',
        //     hintStyle: const TextStyle(
        //       fontSize: 12,
        //       fontWeight: FontWeight.normal,
        //       color: Colors.black,
        //     ),
        //   ),
        //   onChanged: (value) {
        //     feedback = value;
        //     if (value.isEmpty) {
        //       isDone.value = false;
        //     } else {
        //       isDone.value = true;
        //     }
        //   },
        // ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: ValueListenableBuilder(
                valueListenable: isDone,
                builder: (context, isDoneValue, _) => AltaPrimaryButton(
                  backgroundColor: MaterialStateProperty.resolveWith(
                    (states) => isDoneValue == true
                        ? AltaColor.tangerine
                        : AltaColor.gray,
                  ),
                  paddingVertical: AltaSpacing.space20,
                  paddingHorizontal: AltaSpacing.space28,
                  borderRadius: AltaBorderRadius.radius10,
                  onPressed: () => isDoneValue == true
                      ? Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const FeedbackCompletePage(),
                        ))
                      : null,
                  child: AltaText(
                    context: context,
                    text: 'COMPLETE',
                    style: AltaTextStyle.titleH1,
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
