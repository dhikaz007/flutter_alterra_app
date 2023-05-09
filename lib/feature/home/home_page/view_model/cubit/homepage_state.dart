part of 'homepage_cubit.dart';

@immutable
abstract class HomepageState {}

class HomepageInitial extends HomepageState {}

class UserHomePage extends HomepageState {
  final String? displayName;

  UserHomePage(this.displayName);
}
class UserEmailHomePage extends HomepageState {
  final String? emailAddress;

  UserEmailHomePage(this.emailAddress);
}

class UserHomePageLogOut extends HomepageState {}
