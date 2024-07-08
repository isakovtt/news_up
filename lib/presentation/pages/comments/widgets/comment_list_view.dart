import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';

import '../../../../utils/extensions/time_ago_extension.dart';
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
            .orderBy('timestamp', descending: true)
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
              final com = coms[index];
              final Timestamp timestamp = com['timestamp'] ?? '0s';
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommentHeaderTile(
                    profilePicture: com['commenterPhoto'] ??
                        const NetworkImage(AppAssets.netwokProfileAvatar),
                    username: com['commenterName'],
                    timeText: timestamp.toDate().toTimeAgo(),
                  ),
                  CommentDescriptionText(
                    commentDescriptionText: com['commentText'],
                  ),
                  16.verticalSpace,
                  CommentLikeAndReplyButtons(
                    likesCount: '${com['likeCount']} Likes',
                    repliesCount: '0 Replies',
                  ),
                  18.verticalSpace,
                ],
              );
            },
          );
        });
  }
}
