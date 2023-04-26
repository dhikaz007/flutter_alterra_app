import 'package:flutter/material.dart';

import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_primary_button.dart';
import '../../../../../utils/widgets/alta_scaffold.dart';
import '../../../../../utils/widgets/alta_text.dart';
import '../../../../../utils/widgets/alta_text_field.dart';

import 'register_page_3.dart';

class RegisterPage2 extends StatelessWidget {
  const RegisterPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<String> name = ValueNotifier('');
    final ValueNotifier<String> pass = ValueNotifier('');
    final ValueNotifier<String> confirmPass = ValueNotifier('');
    final ValueNotifier<bool> isFilled = ValueNotifier(false);

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: AltaScaffold(
        leadingAsset: 'assets/icon/login_section/svg/close_icon.svg',
        leadingHeight: 14,
        leadingWidth: 14,
        onPressed: null,
        body: Padding(
          padding: const EdgeInsets.only(
            left: AltaSpacing.space16,
            right: AltaSpacing.space16,
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            reverse: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AltaSpacing.space28),
                AltaText(
                  context: context,
                  text: 'Langkah 2/3',
                  style: AltaTextStyle.titleH2,
                  color: AltaColor.black.withOpacity(0.5),
                ),
                const SizedBox(height: AltaSpacing.space28),
                AltaText(
                  context: context,
                  text: 'Lengkapi Data Akun',
                  style: AltaTextStyle.headlineH1,
                  color: AltaColor.black,
                ),
                const SizedBox(height: AltaSpacing.space28),
                AltaText(
                  context: context,
                  text: 'Nama Lengkap',
                  style: AltaTextStyle.bodyH1,
                  color: AltaColor.darkGray,
                ),
                const SizedBox(height: AltaSpacing.space8),
                ValueListenableBuilder(
                  valueListenable: name,
                  builder: (context, nameValue, _) => AltaTextField(
                    hintText: 'Masukkan nama lengkap anda',
                    onChanged: (value) {
                      name.value = value;
                      if (name.value.isNotEmpty &&
                          pass.value.isNotEmpty &&
                          confirmPass.value.isNotEmpty) {
                        isFilled.value = true;
                      } else {
                        isFilled.value = false;
                      }
                    },
                  ),
                ),
                const SizedBox(height: AltaSpacing.space20),
                AltaText(
                  context: context,
                  text: 'Kata Sandi',
                  style: AltaTextStyle.bodyH1,
                  color: AltaColor.darkGray,
                ),
                const SizedBox(height: AltaSpacing.space8),
                ValueListenableBuilder(
                  valueListenable: pass,
                  builder: (context, passValue, _) => AltaTextField(
                    hintText: 'Masukkan kata sandi',
                    obscureText: true,
                    onChanged: (value) {
                      pass.value = value;
                      if (name.value.isNotEmpty &&
                          pass.value.isNotEmpty &&
                          confirmPass.value.isNotEmpty) {
                        isFilled.value = true;
                      } else {
                        isFilled.value = false;
                      }
                    },
                  ),
                ),
                const SizedBox(height: AltaSpacing.space20),
                AltaText(
                  context: context,
                  text: 'Konfirmasi Kata Sandi',
                  style: AltaTextStyle.bodyH1,
                  color: AltaColor.darkGray,
                ),
                const SizedBox(height: AltaSpacing.space8),
                ValueListenableBuilder(
                  valueListenable: confirmPass,
                  builder: (context, confirmPassValue, _) => AltaTextField(
                    hintText: 'Masukkan konfirmasi kata sandi',
                    obscureText: true,
                    onChanged: (value) {
                      confirmPass.value = value;
                      if (name.value.isNotEmpty &&
                          pass.value.isNotEmpty &&
                          confirmPass.value.isNotEmpty) {
                        isFilled.value = true;
                      } else {
                        isFilled.value = false;
                      }
                    },
                  ),
                ),
                const SizedBox(height: AltaSpacing.space20),
                Row(
                  children: [
                    Expanded(
                      child: ValueListenableBuilder(
                        valueListenable: isFilled,
                        builder: (context, isFilledValue, child) =>
                            AltaPrimaryButton(
                          backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => isFilledValue == true
                                ? AltaColor.darkBlue
                                : AltaColor.altGray2,
                          ),
                          onPressed: () => isFilledValue == true
                              ? Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      RegisterPage3(email: name.value),
                                ))
                              : null,
                          borderRadius: 8,
                          paddingHorizontal: AltaSpacing.space28,
                          paddingVertical: AltaSpacing.space20,
                          child: AltaText(
                            context: context,
                            text: 'DAFTAR',
                            style: AltaTextStyle.titleH1,
                            color: AltaColor.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AltaSpacing.space20),
                AltaText(
                  context: context,
                  text: 'Dengan menekan tombol "DAFTAR", saya',
                  style: AltaTextStyle.titleH3,
                  color: AltaColor.darkGray,
                  textAlign: TextAlign.justify,
                ),
                Row(
                  children: [
                    AltaText(
                      context: context,
                      text: 'menyetujui ',
                      style: AltaTextStyle.titleH3,
                      color: AltaColor.darkGray,
                      textAlign: TextAlign.justify,
                    ),
                    AltaText(
                      context: context,
                      text: 'Syarat Ketentuan ',
                      style: AltaTextStyle.titleH2,
                      color: AltaColor.tangerine,
                      textAlign: TextAlign.justify,
                    ),
                    AltaText(
                      context: context,
                      text: '& ',
                      style: AltaTextStyle.titleH3,
                      color: AltaColor.darkGray,
                      textAlign: TextAlign.justify,
                    ),
                    AltaText(
                      context: context,
                      text: 'Privasi ',
                      style: AltaTextStyle.titleH2,
                      color: AltaColor.tangerine,
                      textAlign: TextAlign.justify,
                    ),
                    AltaText(
                      context: context,
                      text: 'yang ',
                      style: AltaTextStyle.titleH3,
                      color: AltaColor.darkGray,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
                AltaText(
                  context: context,
                  text: 'berlaku di Alterra Academy.',
                  style: AltaTextStyle.titleH3,
                  color: AltaColor.darkGray,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
