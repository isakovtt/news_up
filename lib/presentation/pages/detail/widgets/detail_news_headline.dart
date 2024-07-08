import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/extensions/time_ago_extension.dart';

import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../widgets/global_dot.dart';

class DetailNewsHeadline extends StatelessWidget {
  const DetailNewsHeadline({super.key, required this.postId});

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
          final postTitle = post['newsTitle'];
          final postCategory = post['category'];
          final Timestamp timestamp = post['time'];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: AppPaddings.lr24t16,
                child: Text(
                  postTitle,
                  style: AppTextStyles.greyScale900s20W700,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ),
              4.verticalSpace,
              Padding(
                padding: AppPaddings.h24,
                child: Row(
                  children: [
                    Text(
                      postCategory,
                      style: AppTextStyles.primaryBaseS14W500,
                    ),
                    8.horizontalSpace,
                    const GlobalDot.max(),
                    8.horizontalSpace,
                    Text(
                      timestamp.toDate().toTimeAgo(),
                      style: AppTextStyles.greyScale400s14W400,
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}
