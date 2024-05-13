import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

class EditProfilePicture extends StatelessWidget {
  const EditProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('users')
          .where(
            'uid',
            isEqualTo: FirebaseAuth.instance.currentUser!.uid,
          )
          .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox.shrink();
        }
        final user = snapshot.data!.docs.first;
        return CircleAvatar(
          radius: 44.r,
          backgroundColor: AppColors.greyScale_300,
          child: ClipOval(
            child: Image.network(
              user['profilePicture'] ?? AppAssets.netwokProfileAvatar,
              height: 88.h,
              width: 88.w,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
