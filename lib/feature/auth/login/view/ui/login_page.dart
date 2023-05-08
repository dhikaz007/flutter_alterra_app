import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/auth/auth_validator.dart';
import '../../../../../utils/alta_constant.dart';
import '../../../../../utils/alta_widgets.dart';
import '../../view_model/cubit/login_cubit.dart';
import '../../../../home/home_page/view/ui/main_home_page.dart';
import '../../../forgot_password/view/ui/forgot_password_page.dart';
import '../../../register/view/ui/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static final ValueNotifier<String> _email = ValueNotifier('');
  static final ValueNotifier<String> _pass = ValueNotifier('');
  static final ValueNotifier<bool> _isFilled = ValueNotifier(false);
  static final ValueNotifier<bool> _isValid = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is UserLoginSuccess) {
          AltaSnackBar.getAltaSnackBar(
              context, 'Berhasil login', AltaColor.darkBlue);
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const MainHomePage()),
              (route) => false);
        } else if (state is UserLoginFailure) {
          AltaSnackBar.getAltaSnackBar(context, state.errorText, AltaColor.red);
        }
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Stack(
            children: [
              const AltaLoginBackground(),
              AltaScaffold(
                scaffoldColor: Colors.transparent,
                isAppbar: AppBarVisibility.off,
                body: Padding(
                  padding: const EdgeInsets.all(AltaSpacing.space16),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    reverse: true,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: AltaSpacing.space72),
                        const AltaLogo(
                          imgPath:
                              'assets/images/login_section/png/alterra_blue_logo.png',
                          width: 164,
                          height: 99,
                          alignment: Alignment.center,
                        ),
                        const SizedBox(height: AltaSpacing.space56),
                        AltaText(
                          context: context,
                          text: 'Selamat Datang',
                          style: AltaTextStyle.title1,
                          fontWeight: CustomFontWeight.bold,
                          color: AltaColor.black,
                        ),
                        const SizedBox(height: AltaSpacing.space16),
                        ValueListenableBuilder(
                          valueListenable: _isValid,
                          builder: (context, isValidValue, _) => Visibility(
                            visible: isValidValue,
                            replacement: Wrap(
                              children: [
                                AltaText(
                                  context: context,
                                  text: 'Mungkin username atau password yang',
                                  style: AltaTextStyle.title3,
                                  fontWeight: CustomFontWeight.normal,
                                  color: AltaColor.red,
                                  textAlign: TextAlign.left,
                                ),
                                AltaText(
                                  context: context,
                                  text: 'anda masukkan salah ',
                                  style: AltaTextStyle.title3,
                                  fontWeight: CustomFontWeight.normal,
                                  color: AltaColor.red,
                                  textAlign: TextAlign.left,
                                ),
                                const AltaSvg(
                                  svgPath:
                                      'assets/icon/login_section/svg/error_icon.svg',
                                  width: 16,
                                  height: 16,
                                ),
                              ],
                            ),
                            child: AltaText(
                              context: context,
                              text: 'Masukkan akun Alterra Academy',
                              style: AltaTextStyle.title3,
                              fontWeight: CustomFontWeight.normal,
                              color: AltaColor.darkBlue,
                            ),
                          ),
                        ),
                        const SizedBox(height: AltaSpacing.space16),
                        AltaText(
                          context: context,
                          text: 'Masukkan Email',
                          style: AltaTextStyle.body1,
                          fontWeight: CustomFontWeight.medium,
                          color: AltaColor.darkGray,
                        ),
                        const SizedBox(height: AltaSpacing.space8),
                        ValueListenableBuilder<String>(
                          valueListenable: _email,
                          builder: (context, emailValue, _) => AltaTextField(
                            hintText: 'Masukkan email anda',
                            borderRadius: 8,
                            borderSide: const BorderSide(color: AltaColor.gray),
                            onChanged: (value) {
                              _email.value = value;
                              if (_email.value.isEmpty && _pass.value.isEmpty) {
                                _isFilled.value = false;
                                _isValid.value = true;
                              } else if (_email.value.contains(' ')) {
                                _isValid.value = false;
                              } else {
                                _isFilled.value = true;
                                _isValid.value = true;
                              }
                              authValidator.validateEmail(value);
                            },
                          ),
                        ),
                        const SizedBox(height: AltaSpacing.space16),
                        AltaText(
                          context: context,
                          text: 'Kata Sandi',
                          style: AltaTextStyle.body1,
                          fontWeight: CustomFontWeight.medium,
                          color: AltaColor.darkGray,
                        ),
                        const SizedBox(height: AltaSpacing.space8),
                        ValueListenableBuilder(
                          valueListenable: _pass,
                          builder: (BuildContext context, passValue, _) =>
                              AltaTextField(
                            obscureText: true,
                            hintText: 'Masukkan kata sandi',
                            borderRadius: 8,
                            borderSide: const BorderSide(color: AltaColor.gray),
                            onChanged: (value) {
                              _pass.value = value;
                              if (_pass.value.isEmpty && _email.value.isEmpty) {
                                _isFilled.value = false;
                                _isValid.value = true;
                              } else if (_pass.value.contains(' ')) {
                                _isValid.value = false;
                              } else {
                                _isFilled.value = true;
                                _isValid.value = true;
                              }
                              authValidator.validatePassword(value);
                            },
                          ),
                        ),
                        const SizedBox(height: AltaSpacing.space20),
                        AltaTextButton(
                          onPressed: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ForgotPasswordPage(),
                          )),
                          child: AltaText(
                            context: context,
                            text: 'Lupa Password',
                            style: AltaTextStyle.title3,
                            fontWeight: CustomFontWeight.semiBold,
                            color: AltaColor.tangerine,
                          ),
                        ),
                        const SizedBox(height: AltaSpacing.space16),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: ValueListenableBuilder(
                                valueListenable: _isFilled,
                                builder: (context, isFilledValue, child) =>
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
                                  onPressed: () async => isFilledValue ==
                                              true &&
                                          _isValid.value == true
                                      // &&
                                      // authValidator
                                      //     .validateEmail(_email.value) &&
                                      // authValidator
                                      //     .validatePassword(_pass.value)
                                      ? await context.read<LoginCubit>().login(
                                            email: _email.value,
                                            password: _pass.value,
                                          )
                                      : null,
                                  child: AltaText(
                                    context: context,
                                    text: 'LOGIN',
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
                              text: 'Belum punya akun?',
                              style: AltaTextStyle.title2,
                              fontWeight: CustomFontWeight.semiBold,
                              color: AltaColor.black,
                            ),
                            TextButton(
                              onPressed: () =>
                                  Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const RegisterPage(),
                              )),
                              child: AltaText(
                                context: context,
                                text: 'Daftar disini',
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
            ],
          ),
        );
      },
    );
  }
}
