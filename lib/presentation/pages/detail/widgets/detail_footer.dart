import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/presentation/pages/comments/comments_screen.dart';
import 'package:newsup_app/utils/helpers/navigate.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_color_filters.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../widgets/global_comment_input.dart';
import '../../../widgets/global_dot.dart';

class DetailFooter extends StatelessWidget {
  const DetailFooter({super.key, required this.postId});
  final String postId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.lr24b12t13,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: GlobalCommentInput(
                  postId: postId,
                ),
              ),
              12.horizontalSpace,
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigate.navigatePush(
                        context,
                        CommentsScreen(postId: postId),
                      );
                    },
                    child: SvgPicture.asset(
                      AppAssets.messageCircle,
                      colorFilter: AppColorFilters.greyScale400SrcIn,
                    ),
                  ),
                  const Positioned(
                    right: 0,
                    top: 0,
                    child: GlobalDot.notification(radius: 6),
                  ),
                  Positioned(
                    right: 3,
                    top: 0,
                    child: StreamBuilder(
                      stream: FirebaseFirestore.instance
                          .collection('comments')
                          .doc(postId)
                          .collection('postComments')
                          .snapshots(),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return const SizedBox.shrink();
                        }
                        final commentCount = snapshot.data!.docs;
                        return Text(
                          commentCount.length.toString(),
                          style: AppTextStyles.whiteS7W500.copyWith(
                            fontSize: 7,
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
              8.horizontalSpace,
              SvgPicture.asset(
                AppAssets.heart,
                colorFilter: AppColorFilters.greyScale400SrcIn,
              ),
              8.horizontalSpace,
              SvgPicture.asset(
                AppAssets.eye,
                colorFilter: AppColorFilters.greyScale400SrcIn,
              ),
            ],
          )
        ],
      ),
    );
  }
}
