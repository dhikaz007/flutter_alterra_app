import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../../utils/alta_constants.dart';
import '../../../../../utils/alta_widgets.dart';

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
          body: Stack(
            children: [
              const Align(
                alignment: Alignment.center,
                child: AltaLogo(
                  imgPath: 'assets/images/png/alterra_white_logo.png',
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
