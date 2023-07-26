import 'auth_firebase.dart';

abstract class AuthRepository {
  Future<void> loginUser({required String email, required String password});
}

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<void> loginUser(
      {required String email, required String password}) async {
    final user = AuthFirebase().signInUser(email, password);
    return user;
  }
}
