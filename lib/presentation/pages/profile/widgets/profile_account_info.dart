import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/app_paddings.dart';
import '../../../widgets/account_information.dart';

class ProfileAccountInfo extends StatelessWidget {
  const ProfileAccountInfo({super.key});

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
          return Padding(
            padding: AppPaddings.h24,
            child: AccountInformation(
                hasVerified: true,
                hasUsername: true,
                name: user['name'],
                // ignore: prefer_interpolation_to_compose_strings
                username: '@' +
                    user['name'].toString().replaceAll(' ', '_').toLowerCase(),
                about: user['about'] ?? 'About is Empty'),
          );
        });
  }
}
