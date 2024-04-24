import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class SendEmailVerifyService {
  final _sendEmailVerify = FirebaseAuth.instance;

  Future<void> sendEmailVerify() async {
    try {
      await _sendEmailVerify.currentUser?.sendEmailVerification();

    //  if (_emailVerify.currentUser!.emailVerified == true) {
      
       
    //  }

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