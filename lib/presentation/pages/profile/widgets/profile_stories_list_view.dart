import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../cubits/write_news/write_news_cubit.dart';
import '../../../../utils/constants/app_paddings.dart';
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
          scrollDirection: Axis.vertical,
          itemCount: posts.length,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) => 16.verticalSpace,
          itemBuilder: (context, index) {
            // final stories = profileStories[index];  //local model
            final post = posts[index];
            return GestureDetector(
              child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('channels')
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const SizedBox.shrink();
                    }
                    final channels = snapshot.data!.docs[index];

                    return StoriesListTile(
                      image: post['newsPhoto'],
                      cotegoryName: post['category'],
                      sourceIcon: channels['logo'],
                      sourceName: post['channel'],
                      commentText: post['commentsCount'].toString(),
                      headlineText: post['newsTitle'],
                      timeText: '1h ago',
                    );
                  }),
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
