import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(UserLoginInitial());

  Future<void> login({required String email, required String password}) async {
      emit(UserLoginLoading());
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(UserLoginSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(UserLoginFailure('User tidak tersedia.'));
      } else if (e.code == 'wrong-password') {
        emit(UserLoginFailure(
            'Mungkin email atau password yang anda masukkan salah.'));
      } else if (e.code == 'invalid-email') {
        emit(UserLoginFailure('Masukkan email yang valid'));
      } else {
        emit(UserLoginFailure(e.message.toString()));
      }
    } catch (error) {
      emit(UserLoginFailure(error.toString()));
    }
  }
}
