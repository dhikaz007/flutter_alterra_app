import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import 'confirm_new_password_page.dart';

import '../../../../../utils/widgets/alta_svg.dart';
import '../../../../../utils/widgets/alta_scaffold.dart';
import '../../../../../utils/widgets/alta_icon_button.dart';

import '../../../../../utils/widgets/alta_text_button.dart';
import '../../../../../utils/widgets/alta_logo.dart';
import '../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../utils/widgets/alta_text.dart';
import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_primary_button.dart';

class ForgotPasswordPage3 extends StatelessWidget {
  const ForgotPasswordPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse(
        'https://flexiprogram-api.alterraacademy.id/api/v1/auth/email-verification/eyJpdiI6IjYxSnJKTWRHYzd1ckFEcHo1Y2VQV3c9PSIsInZhbHVlIjoiT3RKd0RSVWxqdU1GWjhHUCtGTlwvcXU4TnlvOHZCKzFOUElqaVk0NnlRTlZQWjhpS3RKRVNcLzFRK3JHWE41eVwvaCIsIm1hYyI6ImFmYmY4OGE0NmNmZDQ0N2JjM2M3OWE5NmY2NTEzYTMwMjg1YjRlNjQ3YzY5NGE2YzI3OTA5NWQyYjJkYmIwOGUifQ==');

    Future<void> launch() async {
      if (await launchUrl(url)) {
        await launchUrl(url);
      } else {
        throw Exception('Could not launch $url');
      }
    }

    return AltaScaffold(
      scaffoldColor: AltaColor.white,
      appBarColor: AltaColor.white,
      isAppbar: AppBarVisibility.on,
      leadingAsset: 'assets/icon/login_section/svg/arrow_back_icon.svg',
      leadingHeight: 17,
      leadingWidth: 15,
      onPressed: () {},
      actions: const [
        AltaIconButton(
          svgAsset: 'assets/icon/login_section/svg/move_icon.svg',
          iconWidth: 17,
          iconHeight: 16,
        ),
        AltaIconButton(
          svgAsset: 'assets/icon/login_section/svg/trash_icon.svg',
          iconWidth: 15,
          iconHeight: 18,
        ),
        AltaIconButton(
          svgAsset: 'assets/icon/login_section/svg/email_icon.svg',
          iconWidth: 17,
          iconHeight: 13.6,
        ),
        AltaIconButton(
          svgAsset: 'assets/icon/login_section/svg/more_vert_icon.svg',
          iconWidth: 3.46,
          iconHeight: 15,
        ),
      ],
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(
            left: AltaSpacing.space16,
            right: AltaSpacing.space16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AltaSpacing.space28),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AltaText(
                    context: context,
                    text:
                        'Verifikasi email Anda untuk \nmerubah kata sandi \nAlterra Academy',
                    style: AltaTextStyle.title1,
                    fontWeight: CustomFontWeight.semiBold,
                    color: AltaColor.black,
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(width: AltaSpacing.space4),
                  const AltaSvg(
                    svgPath: 'assets/icon/login_section/svg/starred_icon.svg',
                    width: 16,
                    height: 16,
                  ),
                ],
              ),
              const SizedBox(height: AltaSpacing.space32),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: AltaColor.darkBlue,
                ),
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AltaText(
                      context: context,
                      text: 'Alterra Admin',
                      style: AltaTextStyle.title3,
                      fontWeight: CustomFontWeight.semiBold,
                      color: AltaColor.darkGray,
                    ),
                    const SizedBox(width: AltaSpacing.space8),
                    AltaText(
                      context: context,
                      text: 'May 6',
                      style: AltaTextStyle.body2,
                      fontWeight: CustomFontWeight.medium,
                      color: AltaColor.darkGray,
                    ),
                  ],
                ),
                subtitle: Row(
                  children: [
                    AltaText(
                      context: context,
                      text: 'to me',
                      style: AltaTextStyle.body1,
                      fontWeight: CustomFontWeight.medium,
                      color: AltaColor.darkGray,
                    ),
                    const SizedBox(width: AltaSpacing.space8),
                    SvgPicture.asset(
                      'assets/icon/login_section/svg/vert_down_icon.svg',
                    ),
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    AltaIconButton(
                      splashRadius: 15,
                      onPressed: () {},
                      svgAsset: 'assets/icon/login_section/svg/reply_icon.svg',
                      iconWidth: 15,
                      iconHeight: 13,
                    ),
                    AltaIconButton(
                      splashRadius: 15,
                      onPressed: () {},
                      svgAsset:
                          'assets/icon/login_section/svg/more_vert_icon.svg',
                      iconWidth: 3,
                      iconHeight: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AltaSpacing.space8),
              const AltaLogo(
                imgPath:
                    'assets/images/login_section/png/alterra_blue_logo.png',
                width: 132,
                height: 72,
                alignment: Alignment.centerLeft,
              ),
              const SizedBox(height: AltaSpacing.space24),
              AltaText(
                context: context,
                text: 'Kata Sandi',
                style: AltaTextStyle.title1,
                fontWeight: CustomFontWeight.bold,
                color: AltaColor.darkGray,
              ),
              const SizedBox(height: AltaSpacing.space16),
              AltaText(
                context: context,
                text:
                    'Halo, Nahdy Dailamy Batewa! Silakan klik tombol di bawah ini untuk mengubah kata sandi akun Alterra kamu',
                style: AltaTextStyle.title3,
                fontWeight: CustomFontWeight.normal,
                color: AltaColor.darkGray,
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: AltaSpacing.space24),
              Row(
                children: [
                  Expanded(
                    child: AltaPrimaryButton(
                      backgroundColor:
                          MaterialStateProperty.all(AltaColor.tangerine),
                      borderRadius: AltaBorderRadius.radius8,
                      paddingVertical: AltaSpacing.space20,
                      paddingHorizontal: AltaSpacing.space28,
                      onPressed: () =>
                          Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ConfirmNewPasswordPage(),
                      )),
                      child: AltaText(
                        context: context,
                        text: 'Ubah Kata Sandi',
                        style: AltaTextStyle.title3,
                        fontWeight: CustomFontWeight.semiBold,
                        color: AltaColor.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AltaSpacing.space20),
              AltaText(
                context: context,
                text:
                    'Jika kamu tidak melakukan pendaftaran, harap hiraukan email ini',
                style: AltaTextStyle.body1,
                fontWeight: CustomFontWeight.normal,
                color: AltaColor.black,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AltaSpacing.space24),
              AltaText(
                context: context,
                text:
                    'Jika anda mengalami kendala ketika klik tombol "Verifikasi Akun Alterra", klik link URL di bawah ini:',
                style: AltaTextStyle.body1,
                fontWeight: CustomFontWeight.normal,
                color: AltaColor.black,
                textAlign: TextAlign.left,
              ),
              AltaTextButton(
                onPressed: () => launch(),
                child: AltaText(
                  context: context,
                  text:
                      'https://flexiprogram-api.alterraacademy.id/api/v1/auth/email-verification/eyJpdiI6IjYxSnJKTWRHYzd1ckFEcHo1Y2VQV3c9PSIsInZhbHVlIjoiT3RKd0RSVWxqdU1GWjhHUCtGTlwvcXU4TnlvOHZCKzFOUElqaVk0NnlRTlZQWjhpS3RKRVNcLzFRK3JHWE41eVwvaCIsIm1hYyI6ImFmYmY4OGE0NmNmZDQ0N2JjM2M3OWE5NmY2NTEzYTMwMjg1YjRlNjQ3YzY5NGE2YzI3OTA5NWQyYjJkYmIwOGUifQ==',
                  style: AltaTextStyle.hyperlinkText,
                  fontWeight: CustomFontWeight.normal,
                  color: AltaColor.darkBlue,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
