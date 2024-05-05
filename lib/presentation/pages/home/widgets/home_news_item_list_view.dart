import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/detail/detail_news_screen.dart';
import 'package:newsup_app/utils/helpers/navigate.dart';

import '../../../../data/models/news_headline_model.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../widgets/custom_basic_list_tile.dart';

class HomeNewsItemListView extends StatelessWidget {
  const HomeNewsItemListView({super.key});

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
                final headline = newsheadline[index];
                return StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('channels')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return const SizedBox.shrink();
                      }
                      final channels = snapshot.data!.docs[index];
                      return GlobalBasicListTile(
                        image: post['newsPhoto'],
                        categoryName: post['category'],
                        title: post['newsTitle'],
                        sourceIcon: channels['logo'],
                        sourceName: post['channel'],
                        timeText: headline.timeText,
                        commentText: post['commentsCount'].toString(),
                        hasSource: true,
                        onTap: () {
                          Navigate.navigatePush(
                            context,
                             DetailNewsScreen(postId: post.id),
                          );
                        },
                      );
                    });
              },
            ),
          );
        });
  }
}
