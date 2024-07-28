import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/comments/comments_screen.dart';
import 'package:newsup_app/presentation/pages/home/widgets/home_shimmer.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/extensions/time_ago_extension.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../../widgets/custom_basic_list_tile.dart';
import '../../detail/detail_news_screen.dart';

class ExploreListView extends StatelessWidget {
  const ExploreListView({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('posts')
          .orderBy('time', descending: true)
          .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox(
            height: 400,
          );
        }
        final posts = snapshot.data!.docs;
        return Padding(
          padding: AppPaddings.h24,
          child: ListView.separated(
            padding: AppPaddings.b16,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: posts.length,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => 16.verticalSpace,
            itemBuilder: (context, index) {
              final post = posts[index];
              Timestamp timestamp = post['time'];
              final String timeAgo = timestamp.toDate().toTimeAgo();
              return StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('channels')
                    .where('channel', isEqualTo: post['channel'])
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const SizedBox.shrink();
                  }
                  final channels = snapshot.data!.docs.first.data();

                  return StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('comments')
                        .doc(post.id)
                        .collection('postComments')
                        .snapshots().delay(const Duration(seconds: 2)),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return const HomeShimmer();
                      }
                      final commentCount = snapshot.data!.docs;
                      return GlobalBasicListTile(
                        image: post['newsPhoto'],
                        title: post['newsTitle'],
                        sourceIcon: channels['logo'],
                        sourceName: post['channel'] + ' News',
                        categoryName: post['category'],
                        timeText: timeAgo,
                        commentCount: commentCount.length.toString(),
                        hasSource: true,
                        commentOnTap: () {
                          Navigate.navigatePush(
                              context,
                              CommentsScreen(
                                postId: post.id,
                              ));
                        },
                        onTap: () {
                          Navigate.navigatePush(
                            context,
                            DetailNewsScreen(postId: post.id),
                          );
                        },
                      );
                    },
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
