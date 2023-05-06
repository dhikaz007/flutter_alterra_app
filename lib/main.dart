import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_alterra_app/feature/auth/forgot_password/view/ui/forgot_password_page.dart';
import 'package:flutter_alterra_app/feature/auth/login/view/ui/login_page.dart';
import 'package:flutter_alterra_app/feature/auth/register/view/ui/register_page.dart';
import 'package:flutter_alterra_app/feature/controller/cubit/forgot_password/forgot_password_cubit.dart';
import 'package:flutter_alterra_app/feature/controller/cubit/login/login_cubit.dart';
import 'package:flutter_alterra_app/feature/controller/cubit/register/register_cubit.dart';
import 'package:flutter_alterra_app/feature/home/home_page/view/ui/home_page.dart';
import 'package:flutter_alterra_app/feature/root_app.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/auth/login/view/ui/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => RegisterCubit(),
        ),
        BlocProvider(
          create: (context) => ForgotPasswordCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Inter',
        ),
        routes: {
          SplashPage.route: (context) => const SplashPage(),
          LoginPage.route: (context) => const LoginPage(),
          RegisterPage.route: (context) => const RegisterPage(),
          ForgotPasswordPage.route: (context) => const ForgotPasswordPage(),
          RootApp.route: (context) => const RootApp(),
        },
        home: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Scaffold(
                  body: Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                );
              }
              if (snapshot.data != null) {
                return const HomePage();
              } else {
                return const LoginPage();
              }
            }),
      ),
    );

    // MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //     fontFamily: 'Inter',
    //   ),
    //   home: const SplashPage(),
    //   // home: const RootApp(),
    //   // home: const ProfilePage(),
    // );
  }
}
