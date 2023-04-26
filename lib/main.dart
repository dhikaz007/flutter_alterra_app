import 'package:flutter/material.dart';

import 'feature/auth/login/view/ui/splash_page.dart';
import 'feature/home_page/view/ui/home_page.dart';
import 'feature/root_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Inter',
      ),
      // home: const SplashPage(),
      home: const RootApp(),
    );
  }
}
