import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(ForgotPasswordInitial());

  static ForgotPasswordCubit get(context) => BlocProvider.of(context);

  Future<void> resetPassword(String email) async {
    try {
      emit(ForgotPasswordSuccess());
      return await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    } on FirebaseException catch (e) {
      if (e.code == 'auth/invalid-email') {
        emit(ForgotPasswordFailure('Email tidak valid.'));
      } else if (e.code == 'user-not-found') {
        emit(ForgotPasswordFailure('Username tidak tersedia.'));
      }
    } catch (error) {
      emit(ForgotPasswordFailure(error.toString()));
    }
  }
}
