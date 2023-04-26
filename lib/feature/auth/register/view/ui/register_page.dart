import 'package:flutter/material.dart';
import 'package:flutter_alterra_app/feature/auth/login/view/ui/login_page.dart';

import '../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_primary_button.dart';
import '../../../../../utils/widgets/alta_text.dart';
import '../../../../../utils/widgets/alta_text_field.dart';
import 'register_page2.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
              const SizedBox(height: AltaSpacing.space32),
              AltaText(
                context: context,
                text: 'Langkah 1/3',
                style: AltaTextStyle.titleH2,
                color: AltaColor.black.withOpacity(0.5),
              ),
              const SizedBox(height: AltaSpacing.space28),
              AltaText(
                context: context,
                text: 'Daftar Akun untuk Jelajahi Alterra Academy',
                style: AltaTextStyle.headlineH1,
                color: AltaColor.black,
              ),
              const SizedBox(height: AltaSpacing.space28),
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
              const SizedBox(height: AltaSpacing.space28),
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
                            
                        onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage2()),
                        ),
                        borderRadius: AltaBorderRadius.radius8,
                        paddingVertical: AltaSpacing.space20,
                        paddingHorizontal: AltaSpacing.space28,
                        onPressed: () {},

                        child: AltaText(
                          context: context,
                          text: 'SELANJUTNYA',
                          style: AltaTextStyle.titleH1,
                          color: AltaColor.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AltaText(
                    context: context,
                    text: 'Sudah punya akun?',
                    style: AltaTextStyle.titleH3,
                    color: AltaColor.darkGray,
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    ),
                    child: AltaText(
                      context: context,
                      text: 'Masuk disini',
                      style: AltaTextStyle.titleH2,
                      color: AltaColor.tangerine,
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
