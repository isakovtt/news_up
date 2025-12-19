import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/app_texts.dart';
import 'profile_header_statistics.dart';

class ProfileStoriesStatistic extends StatelessWidget {
  const ProfileStoriesStatistic({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: StreamBuilder(
          stream: FirebaseFirestore.instance
            .collection('posts')
            .where('uid', isEqualTo: FirebaseAuth.instance.currentUser?.uid)
            .snapshots(),
          builder: (context, snapshot) {
       if (!snapshot.hasData) {
            return  const ProfileHeaderStatistics(
              count: '0',
              text: AppTexts.stories,
            );
          }

          final postsCount = snapshot.data!.docs.length;


            return  ProfileHeaderStatistics(
              count: postsCount.toString(),
              text: AppTexts.stories,
            );
          }),
    );
  }
}
