import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/auth/auth_repository.dart';
import '../../view_model/login_view_model.dart';
import 'login_page.dart';

class LoginMain extends StatelessWidget {
  const LoginMain({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginViewModel(
        authRepository: AuthRepositoryImpl(),
      ),
      child: const LoginPage(),
    );
  }
}
