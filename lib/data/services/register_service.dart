import 'package:firebase_auth/firebase_auth.dart';

class RegisterService {
  final _firebaseAuth = FirebaseAuth.instance;

  Future<User?> userRegister(String email, String password) async {
    try {
      UserCredential credential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } catch (e) {
      print('Some error occured');
      return null;
    }
  }
}
