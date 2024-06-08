import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/models/comments_model.dart';
import 'comment_description_text.dart';
import 'comment_header_tile.dart';
import 'comment_like_and_reply_buttons.dart';

class CommentListView extends StatelessWidget {
  const CommentListView({super.key, required this.postId});

  final String postId;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('comments')
            .doc(postId)
            .collection('postComments')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const SizedBox.shrink();
          }
          final coms = snapshot.data!.docs;

          return ListView.separated(
            itemCount: coms.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            separatorBuilder: (context, index) => 24.verticalSpace,
            itemBuilder: (context, index) {
              final comment = comments[index];
              final com = coms[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommentHeaderTile(
                    profilePicture: comment.profileImage!,
                    username: comment.username!,
                    timeText: comment.timeText!,
                  ),
                  CommentDescriptionText(
                    // commentDescriptionText: comment.commentText!,
                    commentDescriptionText: com['commentText'],
                  ),
                  16.verticalSpace,
                  CommentLikeAndReplyButtons(
                    likesCount: comment.likesCount!,
                    repliesCount: comment.repliesCount!,
                  ),
                ],
              );
            },
          );
        });
  }
}
