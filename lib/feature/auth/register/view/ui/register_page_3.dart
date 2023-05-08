import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../../utils/alta_constant.dart';
import '../../../../../utils/alta_widgets.dart';
import '../../../login/view/ui/splash_page.dart';
import '../../../login/view/ui/login_page.dart';

class RegisterPage3 extends StatefulWidget {
  final String email;
  const RegisterPage3({Key? key, required this.email}) : super(key: key);

  @override
  State<RegisterPage3> createState() => _RegisterPage3State();
}

class _RegisterPage3State extends State<RegisterPage3> {
  static const maxSeconds = 30;
  Timer? timer;

  final ValueNotifier<int> seconds = ValueNotifier(maxSeconds);

  void startTimer() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        if (seconds.value > 0) {
          seconds.value--;
        } else {
          timer?.cancel();
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const SplashPage()),
              (route) => false);
        }
      },
    );
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AltaScaffold(
      scaffoldColor: AltaColor.white,
      appBarColor: AltaColor.white,
      isAppbar: AppBarVisibility.on,
      leadingAsset: 'assets/icon/login_section/svg/close_icon.svg',
      leadingHeight: 14,
      leadingWidth: 14,
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
            const SizedBox(height: AltaSpacing.space32),
            AltaText(
              context: context,
              text: 'Langkah 3/3',
              style: AltaTextStyle.title3,
              fontWeight: CustomFontWeight.semiBold,
              color: AltaColor.black,
            ),
            const SizedBox(height: AltaSpacing.space28),
            AltaText(
              context: context,
              text:
                  'Klik tautan lupa kata sandi yang telah kami kirim ke ${widget.email}',
              style: AltaTextStyle.headline2,
              fontWeight: CustomFontWeight.semiBold,
              color: AltaColor.black,
            ),
            const SizedBox(height: AltaSpacing.space20),
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
            const SizedBox(height: AltaSpacing.space20),
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
            const SizedBox(height: AltaSpacing.space28),
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
                      onPressed: () => secondsValue == 0 ? {} : null,
                      child: AltaText(
                        context: context,
                        text: 'KIRIM ULANG TAUTAN',
                        style: AltaTextStyle.title2,
                        fontWeight: CustomFontWeight.semiBold,
                        color: AltaColor.white,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
