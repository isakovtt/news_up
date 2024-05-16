import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newsup_app/presentation/widgets/custom_circle_avatar.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('users')
            .where('uid', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const SizedBox.shrink();
          }
          final user = snapshot.data!.docs.first;
          return GestureDetector(
            onTap: () {},
            child: CustomCircleAvatar(
              image: user['profilePicture'] ?? AppAssets.netwokProfileAvatar,
            ),
          );
        });
  }
}
