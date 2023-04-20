import 'package:flutter/material.dart';

import '../../../login/view/ui/login_page.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_text.dart';
import '../../../../../utils/widgets/alta_text_field.dart';
import '../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/widgets/alta_primary_button.dart';

class ConfirmNewPasswordPage extends StatelessWidget {
  const ConfirmNewPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<String> pass = ValueNotifier('');
    final ValueNotifier<String> confirmPass = ValueNotifier('');
    final ValueNotifier<bool> isFilled = ValueNotifier(false);

    return Container(
      color: AltaColor.white,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
              left: AltaSpacing.space16, right: AltaSpacing.space16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AltaSpacing.space96),
              AltaText(
                context: context,
                text: 'Buat kata sandi baru',
                style: AltaTextStyle.headlineH1,
                color: AltaColor.black,
              ),
              const SizedBox(height: AltaSpacing.space24),
              AltaText(
                context: context,
                text: 'Kata sandi baru',
                style: AltaTextStyle.bodyH1,
                color: AltaColor.darkGray,
              ),
              const SizedBox(height: AltaSpacing.space8),
              ValueListenableBuilder(
                valueListenable: pass,
                builder: (BuildContext context, passValue, _) => AltaTextField(
                  obscureText: true,
                  hintText: 'Masukkan kata sandi',
                  onChanged: (value) {
                    pass.value = value;
                    if (pass.value.isNotEmpty && confirmPass.value.isNotEmpty) {
                      isFilled.value = true;
                    } else {
                      isFilled.value = false;
                    }
                  },
                ),
              ),
              const SizedBox(height: AltaSpacing.space24),
              AltaText(
                context: context,
                text: 'Konfirmasi kata sandi',
                style: AltaTextStyle.bodyH1,
                color: AltaColor.darkGray,
              ),
              const SizedBox(height: AltaSpacing.space8),
              ValueListenableBuilder(
                valueListenable: confirmPass,
                builder: (BuildContext context, confirmPassValue, _) =>
                    AltaTextField(
                  obscureText: true,
                  hintText: 'Masukkan ulang kata sandi',
                  onChanged: (value) {
                    confirmPass.value = value;
                    if (confirmPass.value.isNotEmpty && pass.value.isNotEmpty) {
                      isFilled.value = true;
                    } else {
                      isFilled.value = false;
                    }
                  },
                ),
              ),
              const SizedBox(height: AltaSpacing.space24),
              Row(
                mainAxisSize: MainAxisSize.min,
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
                        onPressed: () => isFilled.value == true
                            ? Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()))
                            : isFilled.value == false,
                        child: AltaText(
                          context: context,
                          text: 'SIMPAN',
                          style: AltaTextStyle.titleH1,
                          color: AltaColor.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
