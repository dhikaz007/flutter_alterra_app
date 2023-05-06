import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../../utils/widgets/alta_scaffold.dart';
import '../../../../../utils/widgets/alta_text.dart';
import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_splash_background.dart';
import '../../../../../utils/widgets/alta_logo.dart';

import 'login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  static const String route = "splashPage";

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    _startSplashPage();
    super.initState();
  }

  void _startSplashPage() {
    Timer(
      const Duration(seconds: 2),
      () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const LoginPage(),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const AltaSplashBackground(),
        AltaScaffold(
          scaffoldColor: Colors.transparent,
          isAppbar: AppBarVisibility.off,
          body: Column(
            children: [
              const Spacer(flex: 1),
              const Align(
                alignment: Alignment.center,
                child: AltaLogo(
                  imgPath:
                      'assets/images/login_section/png/alterra_white_logo.png',
                  width: 267,
                  height: 161,
                  alignment: Alignment.center,
                ),
              ),
              const Spacer(flex: 1),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: AltaSpacing.space20),
                  child: AltaText(
                    context: context,
                    text: 'Copyright by Flexiclass\n@2023',
                    style: AltaTextStyle.body2,
                    fontWeight: CustomFontWeight.normal,
                    color: AltaColor.white,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
