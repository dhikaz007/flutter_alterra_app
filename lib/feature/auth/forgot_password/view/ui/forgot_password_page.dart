import 'package:flutter/material.dart';

import '../../../../../utils/widgets/alta_text.dart';
import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_primary_button.dart';
import '../../../../../utils/widgets/alta_text_field.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<String> email = ValueNotifier('');
    final ValueNotifier<bool> isFilled = ValueNotifier(false);

    return Container(
      color: AltaColor.white,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            color: AltaColor.black,
            icon: const Icon(Icons.close),
            iconSize: 14,
            onPressed: () => Navigator.of(context).pop(true),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: AltaSpacing.space16,
            right: AltaSpacing.space16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AltaSpacing.space56),
              AltaText(
                context: context,
                text: 'Langkah 1/2',
                style: AltaTextStyle.titleH2,
                color: AltaColor.black,
              ),
              const SizedBox(height: AltaSpacing.space16),
              AltaText(
                context: context,
                text: 'Masukkan email untuk mengubah kata sandi',
                style: AltaTextStyle.headlineH1,
                color: AltaColor.black,
              ),
              const SizedBox(height: AltaSpacing.space24),
              AltaText(
                context: context,
                text: 'Masukkan email',
                style: AltaTextStyle.bodyH1,
                color: AltaColor.darkGray,
              ),
              const SizedBox(height: AltaSpacing.space8),
              ValueListenableBuilder(
                valueListenable: email,
                builder: (BuildContext context, emailValue, _) => AltaTextField(
                  hintText: 'Masukkan email anda',
                  onChanged: (value) {
                    email.value = value;
                    if (email.value.isNotEmpty) {
                      isFilled.value = true;
                    } else {
                      isFilled.value = false;
                    }
                  },
                ),
              ),
              const SizedBox(height: AltaSpacing.space24),
              Row(
                children: [
                  Expanded(
                    child: ValueListenableBuilder(
                      valueListenable: isFilled,
                      builder: (BuildContext context, isFilledValue, child) =>
                          AltaPrimaryButton(
                        backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => isFilledValue == true
                              ? AltaColor.darkBlue
                              : AltaColor.altGray2,
                        ),
                        onPressed: () {},
                        borderRadius: 8,
                        paddingHorizontal: AltaSpacing.space72,
                        paddingVertical: AltaSpacing.space20,
                        child: AltaText(
                          context: context,
                          text: 'KIRIM KODE / TAUTAN',
                          style: AltaTextStyle.titleH1,
                          color: AltaColor.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
