import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class EmailVerifyService {
  final _emailVerify = FirebaseAuth.instance;

  Future<void> getEmailVerify(String email) async {
    try {
      await _emailVerify.currentUser?.sendEmailVerification();

      log('servis isledi');
    } on FirebaseAuthException catch (e) {
      log('error service');

      Exception(e.message);
    }
  }
}




// if (userCredential.user!.emailVerified == true) {
//         return Future.delayed(const Duration(milliseconds: 200));
//       }