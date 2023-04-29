import 'package:flutter/material.dart';
import 'package:flutter_alterra_app/feature/home/course_list_page/view/ui/flutter_course_list_page.dart';
import 'package:flutter_alterra_app/feature/home/course_list_page/view/ui/ui_ux_course_list_page.dart';


import 'feature/auth/login/view/ui/splash_page.dart';

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
      home: const FlutterCourseListPage(),
    );
  }
}
