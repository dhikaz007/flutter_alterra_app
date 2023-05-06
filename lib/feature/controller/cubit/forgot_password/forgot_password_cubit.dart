import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(ForgotPasswordInitial());

  static ForgotPasswordCubit get(context) => BlocProvider.of(context);

  Future<void> forgotPassword({required String email}) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      emit(ForgotPasswordSuccess());
    } on FirebaseAuthException catch (e) {
      emit(ForgotPasswordFailure(e.message.toString()));
    } catch (e) {
      emit(ForgotPasswordFailure(e.toString()));
    }
  }
}
