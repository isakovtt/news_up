import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/extensions/time_ago_extension.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../../widgets/custom_basic_list_tile.dart';
import '../../comments/comments_screen.dart';
import '../../detail/detail_news_screen.dart';

class HomeNewsItemListView extends StatelessWidget {
  const HomeNewsItemListView({
    super.key,
    required this.selectedCategory,
  });

  final String selectedCategory;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: selectedCategory == 'Trending'
          ? FirebaseFirestore.instance
              .collection('posts')
              .orderBy('time', descending: true)
              .snapshots()
          : FirebaseFirestore.instance
              .collection('posts')
              .where('category', isEqualTo: selectedCategory)
              .orderBy('time', descending: true)
              .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox.shrink();
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
              final Timestamp timestamp = post['time'];
              return StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('channels')
                    .where('channel', isEqualTo: post['channel'])
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const SizedBox.shrink();
                  }
                  final channel = snapshot.data!.docs.first.data();
                  return StreamBuilder(
                      stream: FirebaseFirestore.instance
                          .collection('comments')
                          .doc(post.id)
                          .collection('postComments')
                          .snapshots(),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return const SizedBox.shrink();
                        }
                        final commentCount = snapshot.data!.docs;

                        return GlobalBasicListTile(
                          image: post['newsPhoto'],
                          categoryName: post['category'],
                          title: post['newsTitle'],
                          sourceIcon: channel['logo'],
                          sourceName: post['channel'] + ' News',
                          timeText: timestamp.toDate().toTimeAgo(),
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
                      });
                },
              );
            },
          ),
        );
      },
    );
  }
}
