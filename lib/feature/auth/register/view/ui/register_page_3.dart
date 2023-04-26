import 'dart:async';

import 'package:flutter/material.dart';

import '../../../login/view/ui/login_page.dart';
import '../../../../../utils/widgets/alta_scaffold.dart';
import '../../../../../utils/widgets/alta_text_button.dart';
import '../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../utils/widgets/alta_text.dart';
import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_primary_button.dart';

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
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (seconds.value > 0) {
        seconds.value--;
      } else {
        timer?.cancel();
      }
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AltaScaffold(
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
              style: AltaTextStyle.titleH2,
              color: AltaColor.black,
            ),
            const SizedBox(height: AltaSpacing.space28),
            AltaText(
              context: context,
              text:
              'Klik tautan lupa kata sandi yang telah kami kirim ke ${widget.email}',
              style: AltaTextStyle.headlineH1,
              color: AltaColor.black,
            ),
            const SizedBox(height: AltaSpacing.space20),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AltaText(
                  context: context,
                  text: 'Email yang dimasukkan salah?',
                  style: AltaTextStyle.titleH2,
                  color: AltaColor.darkGray,
                ),
                const SizedBox(width: AltaSpacing.space8),
                AltaTextButton(
                  onPressed: () {},
                  child: AltaText(
                    context: context,
                    text: 'Ubah Email',
                    style: AltaTextStyle.titleH2,
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
                style: AltaTextStyle.titleH2,
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
                          onPressed: () => secondsValue == 0
                              ? {}
                              : null,
                          child: AltaText(
                            context: context,
                            text: 'KIRIM ULANG TAUTAN',
                            style: AltaTextStyle.titleH1,
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
