import 'package:firebase_auth/firebase_auth.dart';

class AuthFirebase {
  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<void> signInUser(String email, String password) async {
    await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }
}
