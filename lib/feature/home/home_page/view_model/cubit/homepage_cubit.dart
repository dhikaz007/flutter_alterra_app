import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'homepage_state.dart';

class HomepageCubit extends Cubit<HomepageState> {
  HomepageCubit() : super(HomepageInitial());

  String? getUserName() {
    final user = FirebaseAuth.instance.currentUser?.displayName;
    emit(UserHomePage(user));
    return user;
  }

  String? getEmailUser() {
    final emailUser = FirebaseAuth.instance.currentUser?.email;
    emit(UserEmailHomePage(emailUser));
    return emailUser;
  }

  Future<void> userLogout() async {
    emit(UserHomePageLogOut());
    return await FirebaseAuth.instance.signOut();
  }
}
