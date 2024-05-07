import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/detail/detail_news_screen.dart';
import 'package:newsup_app/utils/helpers/navigate.dart';

import '../../../../data/models/hot_news_model.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../widgets/custom_basic_list_tile.dart';

class ExploreListView extends StatelessWidget {
  const ExploreListView({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('posts').snapshots(),
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

                final news = hotNews[index];
                return StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('channels')
                      .where('channel', isEqualTo: post['channel'])
                    .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                        return const SizedBox.shrink();
                      }
                      // final channels = snapshot.data!.docs[index];
                    final channels = snapshot.data!.docs.first.data();

                    return GlobalBasicListTile(
                      image: post['newsPhoto'],
                      title:  post['newsTitle'],
                      sourceIcon: channels['logo'],
                      sourceName: post['channel'] + ' News',
                      categoryName: post['category'],
                      timeText: news.sharedTimeText,
                      commentText: post['commentsCount'].toString(),
                      hasSource: true,
                      onTap: () {
                        Navigate.navigatePush(
                          context,
                           DetailNewsScreen(postId: post.id),
                        );
                      },
                    );
                  }
                );
              },
            ),
          );
        });
  }
}
