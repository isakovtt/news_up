import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';

class DetailNewsDescription extends StatelessWidget {
  const DetailNewsDescription({super.key, required this.postId});

  final String postId;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('posts').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox.shrink();
        }
        final postDatas = snapshot.data!;
        final post =
            postDatas.docs.firstWhere((doc) => doc['postId'] == postId);
        final postSubtitle = post['newsSubtitle'];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: AppPaddings.lr24t16,
              child: Text(
                postSubtitle,
                style: AppTextStyles.greyScale500s14W500,
              ),
            ),
          ],
        );
      },
    );
  }
}
