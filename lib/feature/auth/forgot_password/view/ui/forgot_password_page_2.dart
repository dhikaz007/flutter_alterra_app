import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'forgot_password_page_3.dart';

import '../../../login/view/ui/login_page.dart';
import '../../../../../utils/widgets/alta_text_button.dart';
import '../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../utils/widgets/alta_text.dart';
import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_primary_button.dart';

class ForgotPasswordPage2 extends StatefulWidget {
  final String email;
  const ForgotPasswordPage2({Key? key, required this.email}) : super(key: key);

  @override
  State<ForgotPasswordPage2> createState() => _ForgotPasswordPage2State();
}

class _ForgotPasswordPage2State extends State<ForgotPasswordPage2> {
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
    return Container(
      color: AltaColor.white,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            color: AltaColor.black,
            icon: SvgPicture.asset(
                'assets/icon/login_section/svg/arrow_back_icon.svg'),
            iconSize: 14,
            onPressed: () =>
                Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const LoginPage(),
            )),
          ),
        ),
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
                style: AltaTextStyle.titleH2,
                color: AltaColor.black,
              ),
              const SizedBox(height: AltaSpacing.space16),
              AltaText(
                context: context,
                text:
                    'Klik tautan lupa kata sandi yang telah kami kirim ke ${widget.email}',
                style: AltaTextStyle.headlineH1,
                color: AltaColor.black,
              ),
              const SizedBox(height: AltaSpacing.space24),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AltaText(
                    context: context,
                    text: 'Email yang dimasukkan salah?',
                    style: AltaTextStyle.titleH2,
                    color: AltaColor.darkGray,
                  ),
                  const SizedBox(width: 8),
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
              const SizedBox(height: AltaSpacing.space8),
              ValueListenableBuilder(
                valueListenable: seconds,
                builder: (BuildContext context, secondsValue, Widget? child) =>
                    AltaText(
                  context: context,
                  text:
                      'Belum menerima tautan verifikasi? Kirim ulang dalam ${secondsValue.toString()}',
                  style: AltaTextStyle.titleH2,
                  color: AltaColor.darkGray,
                ),
              ),
              const SizedBox(height: AltaSpacing.space24),
              Row(
                children: [
                  Expanded(
                    child: ValueListenableBuilder(
                      valueListenable: seconds,
                      builder: (BuildContext context, secondsValue, child) =>
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
                                builder: (context) =>
                                    const ForgotPasswordPage3(),
                              ))
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
      ),
    );
  }
}
