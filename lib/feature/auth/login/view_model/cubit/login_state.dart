part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class UserLoginInitial extends LoginState {}

class UserLoginLoading extends LoginState {}

class UserLoginSuccess extends LoginState {}

class UserLoginFailure extends LoginState {
  final String errorText;

  UserLoginFailure(this.errorText);
}
