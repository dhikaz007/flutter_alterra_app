import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  static RegisterCubit get(context) => BlocProvider.of(context);

  register({required String emailAddress, required String password}) async {
    emit(RegisterLoading());
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailAddress, password: password);
      emit(RegisterSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        emit(RegisterFailure('The account already exists for that email.'));
      } else {
        emit(RegisterFailure(e.message.toString()));
      }
    } catch (error) {
      emit(RegisterFailure(error.toString()));
    }
  }
}
