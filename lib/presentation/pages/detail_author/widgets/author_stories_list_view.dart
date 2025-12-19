import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../cubits/write_news/write_news_cubit.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/extensions/time_ago_extension.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../../widgets/stories_list_tile.dart';
import '../../comments/comments_screen.dart';
import '../../detail/detail_news_screen.dart';
import '../../home/widgets/home_shimmer.dart';

class AuthorStoriesListView extends StatelessWidget {
  const AuthorStoriesListView({super.key, required this.author});
  final Map<String, dynamic> author;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('posts')
          .where('uid', isEqualTo: author['uid'])
          .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox.shrink();
        }
        final posts = snapshot.data!.docs;
        return ListView.separated(
          padding: AppPaddings.h24,
          shrinkWrap: true,
          itemCount: posts.length,
          physics: const BouncingScrollPhysics(),
          separatorBuilder: (context, index) => 16.verticalSpace,
          itemBuilder: (context, index) {
            final post = posts[index];
            final Timestamp timestamp = post['time'] ?? '0';

            return GestureDetector(
              child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('channels')
                    .where('channel', isEqualTo: post['channel'])
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const SizedBox.shrink();
                  }
                  final channels = snapshot.data!.docs.first.data();

                  // if (post['uid'] == FirebaseAuth.instance.currentUser!.uid) {  
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
                        return StoriesListTile(
                          image: post['newsPhoto'],
                          cotegoryName: post['category'],
                          sourceIcon: channels['logo'],
                          sourceName: post['channel'] + ' News',
                          commentCountText: commentCount.length.toString(),
                          headlineText: post['newsTitle'],
                          timeText: timestamp.toDate().toTimeAgo(),
                          commentOnTap: () {
                            Navigate.navigatePush(
                              context,
                              CommentsScreen(
                                postId: post.id,
                              ),
                            );
                          },
                        );
                      },
                    );
                  // }
                  // return const SizedBox.shrink();
                },
              ),
              onTap: () {
                Navigate.navigatePush(
                  context,
                  BlocProvider(
                    create: (context) {
                      return WriteNewsCubit();
                    },
                    child: DetailNewsScreen(postId: post.id),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
