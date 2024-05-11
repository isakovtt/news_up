import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:rxdart/rxdart.dart';

part 'write_news_state.dart';

class WriteNewsCubit extends Cubit<WriteNewsState> {
  WriteNewsCubit() : super(WriteNewsInitial());

  final titleController = TextEditingController();
  final subtitleController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  final box = Hive.box('writeNews');

  final BehaviorSubject<File> subjectImage = BehaviorSubject<File>();
  Stream<File> get getImageStream => subjectImage.stream;

  void loadImage(File file) {
    subjectImage.value = file;

    box.put('photo', subjectImage.value.path);
    box.put('title', titleController.text);
    box.put('subtitle', subtitleController.text);
  }

  Future<void> dataLoadValidate() async {
    if (formKey.currentState?.validate() ?? false) {
      return log('validateSuccess');
    }
  }

  String? get validateTitle {
    if (titleController.text.isEmpty) {
      log('validate');
      return 'Fill all blanks';
    }
    return null;
  }

  String? get validateSubtitle {
    if (subtitleController.text.isEmpty) {
      return 'Fill all blanks';
    }
    return null;
  }

  String uid = FirebaseAuth.instance.currentUser!.uid;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void sendData() async {
    String? postId = await addDocumentAndGetId('posts', {
      'uid': uid,
      'postId': '',
      'newsPhoto': box.get('photo'),
      'newsTitle': box.get('title'),
      'newsSubtitle': box.get('subtitle'),
      'tags': box.get('tags'),
      'category': box.get('category'),
      'channel': box.get('channel'),
      'commentsCount': 0,
      'time': FieldValue.serverTimestamp(),
    });

    if (postId != null) {
      try {
        await _firestore.collection('posts').doc(postId).update({
          'postId': postId,
        });

        log('Data sent successfully!');
        await box.clear();
        log('Box is empty: ${box.isEmpty.toString()}');
      } catch (error) {
        log('Failed to send data: $error');
      }
    } else {
      log('Failed to add document.');
    }
  }

  Future<String?> addDocumentAndGetId(
      String collectionName, Map<String, dynamic> data) async {
    try {
      DocumentReference documentReference =
          await _firestore.collection(collectionName).add(data);

      return documentReference.id;
    } catch (e) {
      log("An error occurred: $e");
      return null;
    }
  }
//zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz

  // Future<void> getData(String postId) async {
  //   try {
  //     DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
  //         .collection('posts')
  //         .doc(postId)
  //         .get();

  //     if (documentSnapshot.exists) {
  //       // Belge verilerini al
  //       Map<String, dynamic> postData =
  //           documentSnapshot.data() as Map<String, dynamic>;
  //     } else {
  //       log('Belge bulunamadı.');
  //     }
  //   } catch (error) {
  //     log('Hata oluştu: $error');
  //   }
  // }

  //kohne metod zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
  //   try {
  //     _firestore.collection('posts').add({
  //       'uid': uid,
  //       'postId': postId,
  //       'newsPhoto': box.get('photo'),
  //       'newsTitle': box.get('title'),
  //       'newsSubtitle': box.get('subtitle'),
  //       'tags': box.get('tags'),
  //       'category': box.get('category'),
  //       'channel': box.get('channel'),
  //       'commentsCount': 0,
  //       'time': now
  //     }).then((value) async {
  //       log('Data sent successfully!');
  //       await box.clear();
  //       log('Box is empty ${box.isEmpty.toString()}');
  //     }).catchError((error) {
  //       log('Failed to send data: $error');
  //     });
  //   } catch (error) {
  //     log('Error sending data: $error');
  //   }
  // }
}
