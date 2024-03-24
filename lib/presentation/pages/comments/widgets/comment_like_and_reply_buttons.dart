import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_paddings.dart';
import 'comment_button.dart';

class CommentLikeAndReplyButtons extends StatelessWidget {
  const CommentLikeAndReplyButtons(
      {super.key, required this.likesCount, required this.repliesCount});

  final String likesCount;
  final String repliesCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.l76r24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CommentButton(
            width: 76.w,
            countText: likesCount,
            icon: AppAssets.heart,
          ),
          8.horizontalSpace,
          CommentButton(
            width: 90.w,
            countText: repliesCount,
            icon: AppAssets.messageCircle,
          ),
        ],
      ),
    );
  }
}
