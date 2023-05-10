import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../login/view/ui/splash_page.dart';
import '../../../../../core/auth/auth_validator.dart';
import '../../../../../utils/alta_constant.dart';
import '../../../../../utils/alta_widgets.dart';
import '../../view_model/cubit/register_cubit.dart';

class RegisterPage2 extends StatelessWidget {
  final String email;
  const RegisterPage2({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<String> name = ValueNotifier('');
    final ValueNotifier<String> pass = ValueNotifier('');
    final ValueNotifier<String> confirmPass = ValueNotifier('');
    final ValueNotifier<bool> isFilled = ValueNotifier(false);

    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is UserRegisterSuccess) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const SplashPage()),
              (route) => false);
        } else if (state is UserRegisterFailure) {
          AltaSnackBar.getAltaSnackBar(context, state.errorText, AltaColor.red);
        }
      },
      builder: (context, state) {
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
                      text: 'Langkah 2/2',
                      style: AltaTextStyle.title3,
                      fontWeight: CustomFontWeight.semiBold,
                      color: AltaColor.black.withOpacity(0.5),
                    ),
                    const SizedBox(height: AltaSpacing.space28),
                    AltaText(
                      context: context,
                      text: 'Lengkapi Data Akun',
                      style: AltaTextStyle.headline2,
                      fontWeight: CustomFontWeight.semiBold,
                      color: AltaColor.black,
                    ),
                    const SizedBox(height: AltaSpacing.space28),
                    AltaText(
                      context: context,
                      text: 'Nama Lengkap',
                      style: AltaTextStyle.body1,
                      fontWeight: CustomFontWeight.medium,
                      color: AltaColor.darkGray,
                    ),
                    const SizedBox(height: AltaSpacing.space8),
                    ValueListenableBuilder(
                      valueListenable: name,
                      builder: (context, nameValue, _) => AltaTextField(
                        hintText: 'Masukkan nama lengkap anda',
                        keyboardType: TextInputType.name,
                        textCapitalization: TextCapitalization.sentences,
                        borderRadius: 8,
                        borderSide: const BorderSide(color: AltaColor.gray),
                        errorText: name.value.contains(authValidator.nameRegex)
                            ? null
                            : authValidator.errorText(ValidatorType.fullName),
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
                      style: AltaTextStyle.body1,
                      fontWeight: CustomFontWeight.medium,
                      color: AltaColor.darkGray,
                    ),
                    const SizedBox(height: AltaSpacing.space8),
                    ValueListenableBuilder(
                      valueListenable: pass,
                      builder: (context, passValue, _) => AltaTextField(
                        hintText: 'Masukkan kata sandi',
                        keyboardType: TextInputType.text,
                        borderRadius: 8,
                        borderSide: const BorderSide(color: AltaColor.gray),
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
                      style: AltaTextStyle.body1,
                      fontWeight: CustomFontWeight.medium,
                      color: AltaColor.darkGray,
                    ),
                    const SizedBox(height: AltaSpacing.space8),
                    ValueListenableBuilder(
                      valueListenable: confirmPass,
                      builder: (context, confirmPassValue, _) => AltaTextField(
                        hintText: 'Masukkan konfirmasi kata sandi',
                        keyboardType: TextInputType.text,
                        borderRadius: 8,
                        borderSide: const BorderSide(color: AltaColor.gray),
                        obscureText: true,
                        errorText: confirmPass.value.contains(pass.value)
                            ? null
                            : authValidator
                                .errorText(ValidatorType.confirmPassword),
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
                              backgroundColor:
                                  MaterialStateProperty.resolveWith(
                                (states) => isFilledValue == true
                                    ? AltaColor.darkBlue
                                    : AltaColor.altGray2,
                              ),
                              onPressed: () async => isFilledValue == true &&
                                      authValidator
                                              .validateFullName(name.value) ==
                                          true &&
                                      confirmPass.value.contains(pass.value) ==
                                          true &&
                                      authValidator
                                              .validatePassword(pass.value) ==
                                          true &&
                                      authValidator.validatePassword(
                                              confirmPass.value) ==
                                          true
                                  ? await showDialog(
                                      context: context,
                                      builder: (_) => AltaPopUpMessage(
                                        title: 'Registrasi Berhasil',
                                        content:
                                            'Silahkan kembali melakukan login dengan akyn yang sudah terdaftar',
                                        onPressed: () =>
                                            Navigator.of(context).pop(true),
                                      ),
                                    ).then(
                                      (value) => context
                                          .read<RegisterCubit>()
                                          .createUser(
                                            email: email,
                                            password: pass.value,
                                            name: name.value,
                                          ),
                                    )
                                  : null,
                              borderRadius: 8,
                              paddingHorizontal: AltaSpacing.space28,
                              paddingVertical: AltaSpacing.space20,
                              child: AltaText(
                                context: context,
                                text: 'DAFTAR',
                                style: AltaTextStyle.title2,
                                fontWeight: CustomFontWeight.semiBold,
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
                      style: AltaTextStyle.title3,
                      fontWeight: CustomFontWeight.normal,
                      color: AltaColor.darkGray,
                      textAlign: TextAlign.justify,
                    ),
                    Row(
                      children: [
                        AltaText(
                          context: context,
                          text: 'menyetujui ',
                          style: AltaTextStyle.title3,
                          fontWeight: CustomFontWeight.normal,
                          color: AltaColor.darkGray,
                          textAlign: TextAlign.justify,
                        ),
                        AltaText(
                          context: context,
                          text: 'Syarat Ketentuan ',
                          style: AltaTextStyle.title3,
                          fontWeight: CustomFontWeight.semiBold,
                          color: AltaColor.tangerine,
                          textAlign: TextAlign.justify,
                        ),
                        AltaText(
                          context: context,
                          text: '& ',
                          style: AltaTextStyle.title3,
                          fontWeight: CustomFontWeight.normal,
                          color: AltaColor.darkGray,
                          textAlign: TextAlign.justify,
                        ),
                        AltaText(
                          context: context,
                          text: 'Privasi ',
                          style: AltaTextStyle.title3,
                          fontWeight: CustomFontWeight.semiBold,
                          color: AltaColor.tangerine,
                          textAlign: TextAlign.justify,
                        ),
                        AltaText(
                          context: context,
                          text: 'yang ',
                          style: AltaTextStyle.title3,
                          fontWeight: CustomFontWeight.normal,
                          color: AltaColor.darkGray,
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                    AltaText(
                      context: context,
                      text: 'berlaku di Alterra Academy.',
                      style: AltaTextStyle.title3,
                      fontWeight: CustomFontWeight.normal,
                      color: AltaColor.darkGray,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
