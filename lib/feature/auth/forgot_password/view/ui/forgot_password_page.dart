import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/auth/auth_validator.dart';
import '../../../../../utils/alta_constant.dart';
import '../../../../../utils/alta_widgets.dart';
import '../../view_model/cubit/forgot_password_cubit.dart';

import 'forgot_password_page_2.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<String> email = ValueNotifier('');
    final ValueNotifier<bool> isFilled = ValueNotifier(false);

    return BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
      listener: (context, state) {
        if (state is ForgotPasswordSuccess) {
          AltaSnackBar.getAltaSnackBar(
              context, 'Berhasil mengirim tautan ke email', AltaColor.darkBlue);
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                  builder: (context) =>
                      ForgotPasswordPage2(email: email.value)),
              (route) => false);
        } else if (state is ForgotPasswordFailure) {
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
                    style: AltaTextStyle.title3,
                    fontWeight: CustomFontWeight.semiBold,
                    color: AltaColor.black,
                  ),
                  const SizedBox(height: AltaSpacing.space16),
                  AltaText(
                    context: context,
                    text: 'Masukkan email untuk mengubah kata sandi',
                    style: AltaTextStyle.headline2,
                    fontWeight: CustomFontWeight.semiBold,
                    color: AltaColor.black,
                  ),
                  const SizedBox(height: AltaSpacing.space24),
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
                          builder: (context, isFilledValue, child) =>
                              AltaPrimaryButton(
                            backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => isFilledValue == true
                                  ? AltaColor.darkBlue
                                  : AltaColor.altGray2,
                            ),
                            borderRadius: AltaBorderRadius.radius8,
                            paddingVertical: AltaSpacing.space20,
                            paddingHorizontal: AltaSpacing.space28,
                            onPressed: () async => isFilledValue == true &&
                                    email.value.isNotEmpty &&
                                    authValidator.validateEmail(email.value) ==
                                        true
                                ? await context
                                    .read<ForgotPasswordCubit>()
                                    .resetPassword(email.value)
                                : null,
                            child: AltaText(
                              context: context,
                              text: 'KIRIM KODE / TAUTAN',
                              style: AltaTextStyle.title2,
                              fontWeight: CustomFontWeight.bold,
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
      },
    );
  }
}
