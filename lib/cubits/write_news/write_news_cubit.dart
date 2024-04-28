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
  final box = Hive.box('writeNews');

  final BehaviorSubject<File> subjectImage = BehaviorSubject<File>();
  Stream<File> get getImageStream => subjectImage.stream;

  void loadImage(File file) {
    subjectImage.value = file;

    box.put('photo', subjectImage.value.path);
    box.put('title', titleController.text);
    box.put('subtitle', subtitleController.text);
  }

  String uid = FirebaseAuth.instance.currentUser!.uid;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void sendData() {
    _firestore.collection('posts').add({
      'uid': uid,
      'postId' : '',
      'newsPhoto': box.get('photo'),
      'newsTitle': box.get('title'),
      'newsSubtitle': box.get('subtitle'),
      'channel': '',
      'category' : '',
      'commentsCount' : 0,
    }).then((value) {
      log('Data sent successfully!');
    }).catchError((error) {
      log('Failed to send data: $error');
    });
  }

  void getDocumentUid() async {
    CollectionReference usersCollection =
        FirebaseFirestore.instance.collection('posts');

    QuerySnapshot snapshot =
        await usersCollection.where('uid', isEqualTo: uid).get();

    DocumentSnapshot document = snapshot.docs.first;
    if (document.exists) {
      String documentUid = document.id;
      log(documentUid);
    } else {
      log('error document uid');
    }
  }
}
