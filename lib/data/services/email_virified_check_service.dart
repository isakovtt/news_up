import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class EmailVirifiedCheckService {
  final _emailVerify = FirebaseAuth.instance;

  Future chekedVerify() async {
    try {
      _emailVerify.currentUser!.emailVerified;
    } on FirebaseAuthException catch (e) {
      log('error verify check');
      Exception(e.message);
    }
  }
}
