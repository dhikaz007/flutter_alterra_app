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

  _startSplashPage() {
    var duration = const Duration(seconds: 2);
    return Timer(
      duration,
      () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const LoginPage())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const AltaSplashBackground(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Divider(
                height: 300,
              ),
              const AltaLogo(
                imgPath: 'assets/images/png/logo_academy_white.png',
                width: 267,
                height: 161,
                alignment: Alignment.center,
              ),
              const Divider(
                height: 260,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: AltaSpacing.space24),
                child: AltaText(
                  context: context,
                  text: 'Copyright by Flexiclass\n@2023',
                  style: AltaTextStyle.bodyH2,
                  color: AltaColor.white,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
