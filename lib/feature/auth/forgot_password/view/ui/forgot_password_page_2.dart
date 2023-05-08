import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../../utils/alta_constant.dart';
import '../../../../../utils/alta_widgets.dart';
import '../../../login/view/ui/splash_page.dart';
import '../../../login/view/ui/login_page.dart';

import 'forgot_password_page_3.dart';

class ForgotPasswordPage2 extends StatefulWidget {
  final String email;
  const ForgotPasswordPage2({Key? key, required this.email}) : super(key: key);

  @override
  State<ForgotPasswordPage2> createState() => _ForgotPasswordPage2State();
}

class _ForgotPasswordPage2State extends State<ForgotPasswordPage2> {
  static const maxSeconds = 10;
  Timer? timer;

  final ValueNotifier<int> seconds = ValueNotifier(maxSeconds);

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) async {
      if (seconds.value > 0) {
        seconds.value--;
      } else {
        timer?.cancel();
        await showDialog(
          context: context,
          builder: (_) => AltaPopUpMessage(
            title: 'Berhasil Ubah Kata Sandi',
            content:
                'Silahkan melakukan kembali login dengan kata sandi yang baru',
            onPressed: () => Navigator.of(context).pop(true),
          ),
        ).then((value) => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const SplashPage()),
            (route) => false));
      }
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AltaScaffold(
      scaffoldColor: AltaColor.white,
      appBarColor: AltaColor.white,
      isAppbar: AppBarVisibility.on,
      leadingAsset: 'assets/icon/login_section/svg/arrow_back_icon.svg',
      leadingHeight: 17,
      leadingWidth: 15,
      onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const LoginPage(),
      )),
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
              text: 'Langkah 2/2',
              style: AltaTextStyle.title3,
              fontWeight: CustomFontWeight.semiBold,
              color: AltaColor.black,
            ),
            const SizedBox(height: AltaSpacing.space16),
            AltaText(
              context: context,
              text:
                  'Klik tautan lupa kata sandi yang telah kami kirim ke ${widget.email}',
              style: AltaTextStyle.headline2,
              fontWeight: CustomFontWeight.semiBold,
              color: AltaColor.black,
            ),
            const SizedBox(height: AltaSpacing.space24),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AltaText(
                  context: context,
                  text: 'Email yang dimasukkan salah?',
                  style: AltaTextStyle.title3,
                  fontWeight: CustomFontWeight.normal,
                  color: AltaColor.darkGray,
                ),
                const SizedBox(width: AltaSpacing.space8),
                AltaTextButton(
                  onPressed: () {},
                  child: AltaText(
                    context: context,
                    text: 'Ubah Email',
                    style: AltaTextStyle.title3,
                    fontWeight: CustomFontWeight.bold,
                    color: AltaColor.tangerine,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AltaSpacing.space8),
            ValueListenableBuilder(
              valueListenable: seconds,
              builder: (context, secondsValue, _) => AltaText(
                context: context,
                text:
                    'Belum menerima tautan verifikasi? Kirim ulang dalam ${secondsValue.toString()}',
                style: AltaTextStyle.title3,
                fontWeight: CustomFontWeight.normal,
                color: AltaColor.darkGray,
              ),
            ),
            const SizedBox(height: AltaSpacing.space24),
            Row(
              children: [
                Expanded(
                  child: ValueListenableBuilder(
                    valueListenable: seconds,
                    builder: (context, secondsValue, child) =>
                        AltaPrimaryButton(
                      backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => secondsValue == 0
                            ? AltaColor.darkBlue
                            : AltaColor.altGray2,
                      ),
                      borderRadius: AltaBorderRadius.radius8,
                      paddingVertical: AltaSpacing.space20,
                      paddingHorizontal: AltaSpacing.space28,
                      onPressed: () => secondsValue == 0
                          ? Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ForgotPasswordPage3(),
                            ))
                          : null,
                      child: AltaText(
                        context: context,
                        text: 'KIRIM ULANG TAUTAN',
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
    );
  }
}
