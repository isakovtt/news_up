import 'package:firebase_auth/firebase_auth.dart';

class EmailVerifyService {
  final _emailVerify = FirebaseAuth.instance;

  Future<void> getEmailVerify() async {
    try {
      await _emailVerify.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      Exception(e.message);
    }
  }
}
