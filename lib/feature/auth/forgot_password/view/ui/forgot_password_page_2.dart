import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'forgot_password_page_3.dart';

import '../../../../../utils/widgets/alta_text_button.dart';
import '../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../utils/widgets/alta_text.dart';
import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_primary_button.dart';

class ForgotPasswordPage2 extends StatelessWidget {
  final String email;
  const ForgotPasswordPage2({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isFilled = ValueNotifier(false);

    return Container(
      color: AltaColor.white,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            color: AltaColor.black,
            icon: SvgPicture.asset('assets/icon/svg/arrow_back_icon.svg'),
            iconSize: 14,
            onPressed: () => Navigator.of(context).pop(true),
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
                    'Klik tautan lupa kata sandi yang telah kami kirim ke $email',
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
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                    ),
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
              AltaText(
                context: context,
                text:
                    'Belum menerima tautan verifikasi? Kirim ulang dalam 00:24',
                style: AltaTextStyle.titleH2,
                color: AltaColor.darkGray,
              ),
              const SizedBox(height: AltaSpacing.space24),
              Row(
                children: [
                  Expanded(
                    child: ValueListenableBuilder(
                      valueListenable: isFilled,
                      builder: (BuildContext context, isFilledValue, child) =>
                          AltaPrimaryButton(
                        backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => isFilledValue == true
                              ? AltaColor.darkBlue
                              : AltaColor.altGray2,
                        ),
                        borderRadius: AltaBorderRadius.radius8,
                        paddingVertical: AltaSpacing.space20,
                        paddingHorizontal: AltaSpacing.space28,
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ForgotPasswordPage3())),
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
