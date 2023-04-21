import 'package:flutter/material.dart';

import '../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../utils/widgets/alta_text.dart';
import '../../../../../utils/widgets/alta_login_background.dart';
import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_logo.dart';
import '../../../../../utils/widgets/alta_primary_button.dart';
import '../../../../../utils/widgets/alta_text_button.dart';
import '../../../../../utils/widgets/alta_text_field.dart';
import '../../../../home_page/view/ui/home_page.dart';
import '../../../register/view/ui/register_page.dart';
import '../../../forgot_password/view/ui/forgot_password_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<String> email = ValueNotifier('');
    final ValueNotifier<String> pass = ValueNotifier('');
    final ValueNotifier<bool> isFilled = ValueNotifier(false);

    const String emailData = 'alterra';
    const String passData = 'flexi123';

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Stack(
        children: [
          const AltaLoginBackground(),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.all(AltaSpacing.space16),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: AltaSpacing.space72),
                    const AltaLogo(
                      imgPath: 'assets/images/png/alterra_blue_logo.png',
                      width: 164,
                      height: 99,
                      alignment: Alignment.center,
                    ),
                    const SizedBox(height: AltaSpacing.space56),
                    AltaText(
                      context: context,
                      text: 'Selamat Datang',
                      style: AltaTextStyle.headlineH2,
                      color: AltaColor.black,
                    ),
                    const SizedBox(height: AltaSpacing.space16),
                    AltaText(
                      context: context,
                      text: 'Masukkan akun Alterra Academy',
                      style: AltaTextStyle.titleH2,
                      color: AltaColor.darkBlue,
                    ),
                    const SizedBox(height: AltaSpacing.space16),
                    AltaText(
                      context: context,
                      text: 'Masukkan Email',
                      style: AltaTextStyle.bodyH1,
                      color: AltaColor.darkGray,
                    ),
                    const SizedBox(height: AltaSpacing.space8),
                    ValueListenableBuilder<String>(
                      valueListenable: email,
                      builder: (BuildContext context, nameValue, _) =>
                          AltaTextField(
                        hintText: 'Masukkan email anda',
                        onChanged: (value) {
                          email.value = value;
                          if (email.value.isNotEmpty && pass.value.isNotEmpty) {
                            isFilled.value = true;
                          } else {
                            isFilled.value = false;
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: AltaSpacing.space16),
                    AltaText(
                      context: context,
                      text: 'Kata Sandi',
                      style: AltaTextStyle.bodyH1,
                      color: AltaColor.darkGray,
                    ),
                    const SizedBox(height: AltaSpacing.space8),
                    ValueListenableBuilder(
                      valueListenable: pass,
                      builder: (BuildContext context, passValue, _) =>
                          AltaTextField(
                            obscureText: true,
                        hintText: 'Masukkan kata sandi',
                        onChanged: (value) {
                          pass.value = value;
                          if (pass.value.isNotEmpty && email.value.isNotEmpty) {
                            isFilled.value = true;
                          } else {
                            isFilled.value = false;
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: AltaSpacing.space20),
                    AltaTextButton(
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const ForgotPasswordPage()),
                      ),
                      child: AltaText(
                        context: context,
                        text: 'Lupa Password',
                        style: AltaTextStyle.titleH2,
                        color: AltaColor.tangerine,
                      ),
                    ),
                    const SizedBox(height: AltaSpacing.space16),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: ValueListenableBuilder(
                            valueListenable: isFilled,
                            builder:
                                (BuildContext context, isFilledValue, child) =>
                                    AltaPrimaryButton(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith(
                                (states) => isFilledValue == true
                                    ? AltaColor.darkBlue
                                    : AltaColor.altGray2,
                              ),
                              borderRadius: AltaBorderRadius.radius8,
                              paddingVertical: AltaSpacing.space20,
                              paddingHorizontal: AltaSpacing.space28,
                              onPressed: () => isFilled.value == true &&
                                      email.value.contains(emailData) &&
                                      pass.value.contains(passData)
                                  ? Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomePage()))
                                  : isFilled.value == false,
                              child: AltaText(
                                context: context,
                                text: 'LOGIN',
                                style: AltaTextStyle.titleH1,
                                color: AltaColor.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AltaSpacing.space16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AltaText(
                          context: context,
                          text: 'Belum punya akun?',
                          style: AltaTextStyle.titleH2,
                          color: AltaColor.black,
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()),
                          ),
                          child: AltaText(
                            context: context,
                            text: 'Daftar disini',
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
          ),
        ],
      ),
    );
  }
}
