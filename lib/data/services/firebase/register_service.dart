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
    DocumentReference documentReference = _userCollection.doc(id);

    await documentReference.set({
      "uid": id,
      "name": name,
      "email": email,
      "password": password,
      'about': null,
      'phoneNumber': _firebaseAuth.currentUser?.phoneNumber,
      'profilePicture': _firebaseAuth.currentUser?.photoURL,
    });
    await documentReference.update({
      "documentUid": documentReference.id,
    });
  }

  Future<String?> addDocumentAndGetId(
      String collectionName, Map<String, dynamic> data) async {
    try {
      DocumentReference documentReference =
          await FirebaseFirestore.instance.collection(collectionName).add(data);
      log(documentReference.id);
      return documentReference.id;
    } catch (e) {
      log("An error occurred: $e");
      return null;
    }
  }
}
