import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  Future<User?> createUser({
    required String email,
    required String password,
    required String name,
  }) async {
    User? user;

    try {
      emit(UserRegisterLoading());
      final UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      //verifyEmail();
      emit(UserRegisterSuccess());
      user = userCredential.user;
      await user!.updateDisplayName(name);
      await user.reload();
      user = FirebaseAuth.instance.currentUser;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(UserRegisterFailure(
            'Mungkin email atau password yang anda masukkan salah.'));
      } else if (e.code == 'wrong-password') {
        emit(UserRegisterFailure(
            'Mungkin email atau password yang anda masukkan salah.'));
      } else if (e.code == 'email-already-in-use') {
        emit(UserRegisterFailure('Email sudah digunakan'));
      } else if (e.code == 'weak-password') {
        emit(UserRegisterFailure(
            'Kata sandi harus terdiri dari minimal 6 karakter \ndengan angka, huruf kapital dan simbol'));
      } else {
        emit(UserRegisterFailure(e.message.toString()));
      }
    } catch (error) {
      emit(UserRegisterFailure(error.toString()));
    }
    return user;
  }

  Future<void> verifyEmail() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null && !user.emailVerified) {
      return await user.sendEmailVerification();
    }
  }
}
