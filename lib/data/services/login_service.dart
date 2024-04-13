import 'package:firebase_auth/firebase_auth.dart';

class LoginService {
  final _firebaseAuth = FirebaseAuth.instance;

  Future<UserCredential?> userLogin(String email, String password) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      print(credential.user!.email.toString());
      print(credential.user!.uid.toString());
      return credential;
    } catch (e) {
      print('Login Error occured');
      return null;
    }
  }
}
