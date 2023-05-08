import 'package:flutter/material.dart';
import 'package:flutter_alterra_app/feature/auth/login/view/ui/login_page.dart';
import 'package:flutter_alterra_app/feature/controller/cubit/register/register_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'register_page_3.dart';
import '../../../../../utils/alta_constants.dart';
import '../../../../../utils/alta_widgets.dart';

class RegisterPage2 extends StatefulWidget {
  const RegisterPage2({Key? key}) : super(key: key);

  @override
  State<RegisterPage2> createState() => _RegisterPage2State();
}

class _RegisterPage2State extends State<RegisterPage2> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<String> name = ValueNotifier('');
    final ValueNotifier<String> pass = ValueNotifier('');
    final ValueNotifier<String> confirmPass = ValueNotifier('');
    final ValueNotifier<bool> isFilled = ValueNotifier(false);

    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterLoading) {
          loading = true;
        } else if (state is RegisterSuccess) {
          Navigator.pushReplacementNamed(context, LoginPage.route);
        } else if (state is RegisterFailure) {
          ShowSnackBar.getSnackBar(context, state.error, Colors.red);
          loading = false;
        }
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: AltaScaffold(
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
                      text: 'Langkah 2/3',
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
                        borderRadius: 8,
                        borderSide: const BorderSide(color: AltaColor.gray),
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
                        borderRadius: 8,
                        borderSide: const BorderSide(color: AltaColor.gray),
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
                              backgroundColor:
                                  MaterialStateProperty.resolveWith(
                                (states) => isFilledValue == true
                                    ? AltaColor.darkBlue
                                    : AltaColor.altGray2,
                              ),
                              borderRadius: 8,
                              paddingHorizontal: AltaSpacing.space28,
                              paddingVertical: AltaSpacing.space20,
                              onPressed: () => isFilledValue == true
                                  ? Navigator.of(context)
                                      .push(MaterialPageRoute(
                                      builder: (context) =>
                                          RegisterPage3(email: name.value),
                                    ))
                                  : null,
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
