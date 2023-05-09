part of 'register_cubit.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class UserRegisterInitial extends RegisterState {}

class UserRegisterLoading extends RegisterState {}

class UserRegisterSuccess extends RegisterState {}

class UserRegisterFailure extends RegisterState {
  final String errorText;

  UserRegisterFailure(this.errorText);
}