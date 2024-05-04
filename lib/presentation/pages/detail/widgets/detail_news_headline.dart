import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/widgets/global_dot.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';

class DetailNewsHeadline extends StatelessWidget {
  const DetailNewsHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: AppPaddings.lr24t16,
          child: StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection('posts').snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const SizedBox.shrink();
                }
                final post = snapshot.data!.docs.first;
                FirebaseFirestore.instance
                    .collection('posts')
                    .where('postId', isEqualTo: 'postId')
                    .snapshots();

                return Text(
                  // 'Bitcoin Bull Run May Not Happen Until 2025',
                  post['newsTitle'],
                  style: AppTextStyles.greyScale900s20W700,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                );
              }),
        ),
        4.verticalSpace,
        Padding(
          padding: AppPaddings.h24,
          child: Row(
            children: [
              Text(
                'Business',
                style: AppTextStyles.primaryBaseS14W500,
              ),
              8.horizontalSpace,
              const GlobalDot.max(),
              8.horizontalSpace,
              Text(
                '10m ago',
                style: AppTextStyles.greyScale400s14W400,
              ),
            ],
          ),
        )
      ],
    );
  }
}
