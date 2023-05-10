import 'package:flutter/material.dart';

import '../../../../../core/auth/auth_validator.dart';
import '../../../../../utils/alta_constant.dart';
import '../../../../../utils/alta_widgets.dart';
import '../../../login/view/ui/login_page.dart';

import 'register_page_2.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<String> email = ValueNotifier('');
    final ValueNotifier<bool> isFilled = ValueNotifier(false);
    final formKey = GlobalKey<FormState>();

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: AltaScaffold(
        isLeading: LeadingVisibility.on,
        scaffoldColor: AltaColor.white,
        appBarColor: AltaColor.white,
        isAppbar: AppBarVisibility.on,
        leadingAsset: 'assets/icon/login_section/svg/close_icon.svg',
        leadingHeight: 14,
        leadingWidth: 14,
        onPressed: () => Navigator.of(context).pop(true),
        body: Padding(
          padding: const EdgeInsets.only(
            left: AltaSpacing.space16,
            right: AltaSpacing.space16,
          ),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AltaSpacing.space32),
                AltaText(
                  context: context,
                  text: 'Langkah 1/2',
                  style: AltaTextStyle.title3,
                  fontWeight: CustomFontWeight.semiBold,
                  color: AltaColor.black,
                ),
                const SizedBox(height: AltaSpacing.space28),
                AltaText(
                  context: context,
                  text: 'Daftar Akun untuk Jelajahi Alterra Academy',
                  style: AltaTextStyle.headline2,
                  fontWeight: CustomFontWeight.semiBold,
                  color: AltaColor.black,
                ),
                const SizedBox(height: AltaSpacing.space28),
                AltaText(
                  context: context,
                  text: 'Masukkan email',
                  style: AltaTextStyle.body1,
                  fontWeight: CustomFontWeight.medium,
                  color: AltaColor.darkGray,
                ),
                const SizedBox(height: AltaSpacing.space8),
                ValueListenableBuilder(
                  valueListenable: email,
                  builder: (context, emailValue, _) => AltaTextField(
                    hintText: 'Masukkan email anda',
                    borderRadius: 8,
                    borderSide: const BorderSide(color: AltaColor.gray),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) =>
                        value!.isNotEmpty && authValidator.validateEmail(value)
                            ? null
                            : authValidator.errorText(ValidatorType.email),
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
                        builder: (context, isFilledValue, child) =>
                            AltaPrimaryButton(
                          backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => isFilled.value == true
                                ? AltaColor.darkBlue
                                : AltaColor.altGray2,
                          ),
                          borderRadius: AltaBorderRadius.radius8,
                          paddingVertical: AltaSpacing.space20,
                          paddingHorizontal: AltaSpacing.space28,
                          onPressed: () => isFilled.value == true &&
                                  email.value.isNotEmpty &&
                                  formKey.currentState!.validate()
                              ? Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      RegisterPage2(email: email.value),
                                ))
                              : null,
                          child: AltaText(
                            context: context,
                            text: 'SELANJUTNYA',
                            style: AltaTextStyle.title2,
                            fontWeight: CustomFontWeight.semiBold,
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
                      text: 'Sudah punya akun?',
                      style: AltaTextStyle.title3,
                      fontWeight: CustomFontWeight.normal,
                      color: AltaColor.black,
                    ),
                    TextButton(
                      onPressed: () =>
                          Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      )),
                      child: AltaText(
                        context: context,
                        text: 'Masuk disini',
                        style: AltaTextStyle.title3,
                        fontWeight: CustomFontWeight.bold,
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
    );
  }
}
