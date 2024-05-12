import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../widgets/global_button.dart';
import '../../../widgets/global_circle_box.dart';

class ChannelListTile extends StatelessWidget {
  const ChannelListTile({super.key, required this.postId});
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
          final postChannel = post['channel'];
          return ListTile(
            contentPadding: AppPaddings.lrb24t16,
            leading: GlobalCircleBox(
              child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('channels')
                    .where('channel', isEqualTo: post['channel'])
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const SizedBox.shrink();
                  }
                  final channel = snapshot.data!.docs.first.data();
                  return ClipOval(
                    child: Image.network(
                      channel['logo'],
                      fit: BoxFit.cover,
                      height: 48,
                    ),
                  );
                },
              ),
            ),
            title: Text(
              postChannel + ' ' + 'News',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: AppTextStyles.greyScale900s20W700,
            ),
            subtitle: FutureBuilder(
                future: FirebaseFirestore.instance
                    .collection('users')
                    .doc(post['uid'])
                    .get(),
                builder:
                    (context, AsyncSnapshot<DocumentSnapshot> userSnapshot) {
                  if (userSnapshot.connectionState == ConnectionState.waiting) {
                    return const SizedBox.shrink();
                  }
                  if (!userSnapshot.hasData || !userSnapshot.data!.exists) {
                    return const SizedBox.shrink();
                  }
                  final userData = userSnapshot.data!;
                  final String userName = userData['name'];
                  return Text(
                    ' By ' '$userName',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: AppTextStyles.greyScale400s14W400,
                  );
                }),
            trailing: GlobalButton(
              onTap: () {},
              height: 24.h,
              width: 64.w,
              color: AppColors.primaryBase,
              child: Center(
                child: Text(
                  AppTexts.follow,
                  style: AppTextStyles.whiteS10W500,
                ),
              ),
            ),
          );
        });
  }
}
