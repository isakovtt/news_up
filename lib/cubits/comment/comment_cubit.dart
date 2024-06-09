import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'comment_state.dart';

class CommentCubit extends Cubit<CommentState> {
  CommentCubit() : super(CommentInitial());
  TextEditingController commentController = TextEditingController();

  final CollectionReference commentsCollection =
      FirebaseFirestore.instance.collection('comments');

  Future<void> addComment(String postId) async {
    final auth = FirebaseAuth.instance;
    emit(CommentLoading());
    if (auth.currentUser != null) {
      final userDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(auth.currentUser!.uid)
          .get();
      final userName = userDoc.get('name');
      final userPhoto = userDoc.get('profilePicture');

      try {
        commentsCollection.doc(postId).collection('postComments').add({
          'postId': postId,
          'commenterId': auth.currentUser!.uid,
          'commenterName': userName,
          'commenterPhoto': userPhoto,
          'commentText': commentController.text,
          'likeCount': 0,
          'timestamp': DateTime.now(),
        });
        print(auth.currentUser!.displayName);
        emit(CommentSuccess());
      } catch (e) {
        emit(CommentError());
        log('Error adding comment: $e');
      }
    }
  }

  Stream<List<Comment>> getComments(String postId) {
    return commentsCollection
        .doc(postId)
        .collection('postComments')
        .where('postId', isEqualTo: postId)
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => Comment.fromFirestore(doc)).toList());
  }

  @override
  Future<void> close() {
    commentController.dispose();
    commentController.clear();
    return super.close();
  }
}

class Comment {
  final String id;
  final String postId;
  final String userId;
  final String commentText;
  final DateTime timestamp;

  Comment({
    required this.id,
    required this.postId,
    required this.userId,
    required this.commentText,
    required this.timestamp,
  });

  factory Comment.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Comment(
      id: doc.id,
      postId: data['postId'] ?? '',
      userId: data['userId'] ?? '',
      commentText: data['commentText'] ?? '',
      timestamp: (data['timestamp'] as Timestamp).toDate(),
    );
  }
}
