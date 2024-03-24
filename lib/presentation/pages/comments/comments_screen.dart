import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widgets/global_comment_input.dart';
import '../../../utils/constants/app_assets.dart';
import '../../../utils/constants/app_texts.dart';

import '../../../data/models/comments_model.dart';
import 'widgets/comment_app_bar.dart';
import 'widgets/comment_description_text.dart';
import 'widgets/comment_header_tile.dart';
import 'widgets/comment_like_and_reply_buttons.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommentAppBar(),
      body: ListView.separated(
        itemCount: comments.length,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) => 24.verticalSpace,
        itemBuilder: (context, index) {
          final comment = comments[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommentHeaderTile(
                profilePicture: comment.profileImage!,
                username: comment.username!,
                timeText: comment.timeText!,
              ),
              CommentDescriptionText(
                commentDescriptionText: comment.commentText!,
              ),
              16.verticalSpace,
              CommentLikeAndReplyButtons(
                likesCount: comment.likesCount!,
                repliesCount: comment.repliesCount!,
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: GlobalCommentInput(
        height: 56,
        hintText: AppTexts.typeYourComment,
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            AppAssets.sendCommentIcon,
          ),
        ),
      ),
    );
  }
}
