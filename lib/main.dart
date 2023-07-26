import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/auth/firebase_options.dart';
import 'feature/auth/forgot_password/view_model/cubit/forgot_password_cubit.dart';
import 'feature/auth/login/view/ui/splash_page.dart';
import 'feature/auth/login/view_model/cubit/login_cubit.dart';
import 'feature/auth/register/view_model/cubit/register_cubit.dart';
import 'feature/home/home_page/view_model/cubit/homepage_cubit.dart';
import 'utils/alta_constant.dart';
import 'utils/alta_widgets.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.android);
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: AltaColor.darkBlue,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
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
          create: (context) => HomepageCubit(),
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
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: LinearProgressIndicator());
            } else if (snapshot.hasError) {
              return AltaText(
                context: context,
                text: 'Error pada koneksi firebase',
                style: AltaTextStyle.title1,
                fontWeight: CustomFontWeight.bold,
                color: AltaColor.darkBlue,
              );
            } else {
              return const SplashPage();
            }
          },
        ),
      ),
    );
  }
}
