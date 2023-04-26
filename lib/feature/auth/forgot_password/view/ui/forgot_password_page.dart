import 'package:flutter/material.dart';

import '../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../utils/widgets/alta_scaffold.dart';
import '../../../../../utils/widgets/alta_text.dart';
import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_primary_button.dart';
import '../../../../../utils/widgets/alta_text_field.dart';

import 'forgot_password_page_2.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<String> email = ValueNotifier('');
    final ValueNotifier<bool> isFilled = ValueNotifier(false);

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: AltaScaffold(
        leadingAsset: 'assets/icon/login_section/svg/close_icon.svg',
        leadingHeight: 14,
        leadingWidth: 14,
        onPressed: () => Navigator.of(context).pop(true),
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
                    if (email.value.isEmpty) {
                      isFilled.value = false;
                    } else {
                      isFilled.value = true;
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
                        borderRadius: AltaBorderRadius.radius8,
                        paddingVertical: AltaSpacing.space20,
                        paddingHorizontal: AltaSpacing.space28,
                        onPressed: () => isFilledValue == true
                            ? Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    ForgotPasswordPage2(email: email.value),
                              ))
                            : null,
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
