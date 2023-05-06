part of 'forgot_password_cubit.dart';

@immutable
abstract class ForgotPasswordState {}

class ForgotPasswordInitial extends ForgotPasswordState {}

class ForgotPasswordSuccess extends ForgotPasswordState {}

class ForgotPasswordFailure extends ForgotPasswordState {
  final String error;

  ForgotPasswordFailure(this.error);
}
