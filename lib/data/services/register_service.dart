import 'package:firebase_auth/firebase_auth.dart';

class RegisterService {
  final _firebaseAuth = FirebaseAuth.instance;

  Future<UserCredential?> userRegister(String email, String password) async {
    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      print('register success');
      print(credential.user!.uid);
      return credential;
    } catch (e) {
      print('Register error occured');
      return null;
    }
  }
}
