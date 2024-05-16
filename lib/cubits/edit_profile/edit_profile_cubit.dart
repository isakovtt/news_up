import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

part 'edit_profile_state.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit() : super(EditProfileInitial());

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final aboutController = TextEditingController();
  final phoneController = TextEditingController();

  final BehaviorSubject<File> subjectImage = BehaviorSubject<File>();
  Stream<File> get getImageStream => subjectImage.stream;

  void loadImage(File file) {
    subjectImage.value = file;
  }

  void updateUserProfile() async {
    try {
      emit(EditProfileLoading());
      User? currentUser = _auth.currentUser;
      if (currentUser != null) {
        Map<String, dynamic> updateData = {};

        if (nameController.text.isNotEmpty) {
          updateData['name'] = nameController.text;
        }
        if (emailController.text.isNotEmpty) {
          updateData['email'] = emailController.text;
        }
        if (aboutController.text.isNotEmpty) {
          updateData['about'] = aboutController.text;
        }
        if (phoneController.text.isNotEmpty) {
          updateData['phoneNumber'] = phoneController.text;
        }
        if (subjectImage.hasValue) {
          updateData['profilePicture'] = subjectImage.value.path;
        }
        if (subjectImage.hasValue) {
          Reference storageRef = _storage
              .ref()
              .child('profilePictures')
              .child('${currentUser.uid}.jpg');
          UploadTask uploadTask = storageRef.putFile(subjectImage.value);
          TaskSnapshot storageSnapshot = await uploadTask;
          String downloadUrl = await storageSnapshot.ref.getDownloadURL();
          updateData['profilePicture'] = downloadUrl;
        }

        if (updateData.isNotEmpty) {
          await _firestore
              .collection('users')
              .doc(currentUser.uid)
              .update(updateData);
        }

        emit(EditProfileSuccess());
      }
    } catch (e) {
      emit(EditProfileError());
      log('EditProfile error $e');
    }
  }

  @override
  Future<void> close() {
    nameController.clear();
    nameController.dispose();
    emailController.clear();
    emailController.dispose();
    aboutController.clear();
    aboutController.dispose();
    subjectImage.close();

    return super.close();
  }
}
