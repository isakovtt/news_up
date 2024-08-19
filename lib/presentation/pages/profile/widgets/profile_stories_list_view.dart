import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/comments/comments_screen.dart';
import 'package:newsup_app/presentation/pages/home/widgets/home_shimmer.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../cubits/write_news/write_news_cubit.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/extensions/time_ago_extension.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../../widgets/stories_list_tile.dart';
import '../../detail/detail_news_screen.dart';

class ProfileStoriesListView extends StatelessWidget {
  const ProfileStoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('posts').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox.shrink();
        }
        final posts = snapshot.data!.docs;

        return ListView.separated(
          padding: AppPaddings.h24,
          shrinkWrap: true,
          itemCount: posts.length,
          physics: const NeverScrollableScrollPhysics(),
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

                  if (post['uid'] == FirebaseAuth.instance.currentUser!.uid) {  
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
                  }
                  return const SizedBox.shrink();
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
