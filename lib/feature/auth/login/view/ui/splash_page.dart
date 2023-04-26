import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../../utils/widgets/alta_text.dart';
import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_splash_background.dart';
import '../../../../../utils/widgets/alta_logo.dart';

import 'login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

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
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
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
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: AltaSpacing.space20),
                  child: AltaText(
                    context: context,
                    text: 'Copyright by Flexiclass\n@2023',
                    style: AltaTextStyle.bodyH2,
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
