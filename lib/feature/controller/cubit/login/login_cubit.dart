import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);

  login({required String emailAddress, required String password}) async {
    try {
      emit(LoginLoading());

      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
      emit(LoginSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(LoginFailure(
            'Mungkin email atau password yang anda masukkan salah.'));
      } else if (e.code == 'wrong-password') {
        emit(LoginFailure(
            'Mungkin email atau password yang anda masukkan salah.'));
      } else {
        emit(LoginFailure(e.message.toString()));
      }
    } catch (error) {
      emit(LoginFailure(error.toString()));
    }
  }
}
