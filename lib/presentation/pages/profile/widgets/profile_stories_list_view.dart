import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/cubits/write_news/write_news_cubit.dart';
import 'package:newsup_app/presentation/pages/detail/detail_news_screen.dart';
import 'package:newsup_app/utils/helpers/navigate.dart';

import '../../../../data/models/profile_stories_model.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../widgets/stories_list_tile.dart';

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
              final stories = profileStories[index];
              final post = posts[index];
              return GestureDetector(
                child: StoriesListTile(
                  image: post['newsPhoto'],
                  cotegoryName: post['category'],
                  sourceIcon: stories.sourceIcon,
                  sourceName: post['channel'],
                  commentText: stories.commentText,
                  headlineText: post['newsTitle'],
                  timeText: '1h ago',
                ),
                onTap: () {
                  // context.read<WriteNewsCubit>().getData(post.id);
                  Navigate.navigatePush(
                    context,
                    BlocProvider(
                      create: (context) {
                        
                        return WriteNewsCubit();
                      },
                      child:  const DetailNewsScreen(),
                    ),
                  );
                },
              );
            },
          );
        });
  }
}
