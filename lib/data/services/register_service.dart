import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterService {
  final _userCollection = FirebaseFirestore.instance.collection('users');
  final _firebaseAuth = FirebaseAuth.instance;

  Future<UserCredential?> signUp(
      String name, String email, String password) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user != null) {
        _registerUser(
          name,
          email,
          password,
          userCredential.user!.uid,
        );
      }
      return userCredential;
    } on FirebaseAuthException catch (e) {
      e.message;
      log('Register error occured ${e.message}');
      return null;
    }
  }

  Future<void> _registerUser(
      String name, String email, String password, String id) async {
    final users = await _userCollection.doc().set({
      "name": name,
      "email": email,
      "password": password,
      "id": id,
    });
    return users;
  }
}
