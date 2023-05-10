import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/alta_constant.dart';
import '../../../../../utils/alta_widgets.dart';
import '../../../../home/home_page/view/ui/main_home_page.dart';

import 'login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      if (FirebaseAuth.instance.currentUser?.uid == null) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (_) => const LoginPage(),
            ),
            (route) => false);
      } else {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (_) => const MainHomePage(),
            ),
            (route) => false);
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const AltaSplashBackground(),
        AltaScaffold(
          isLeading: LeadingVisibility.off,
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
