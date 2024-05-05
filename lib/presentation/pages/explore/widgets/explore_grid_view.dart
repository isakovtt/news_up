import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/detail/detail_news_screen.dart';
import 'package:newsup_app/utils/helpers/navigate.dart';

import '../../../../data/models/hot_news_model.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../widgets/news_item.dart';

class ExploreGridView extends StatelessWidget {
  const ExploreGridView({super.key});

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
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: posts.length,
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 200.h,
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemBuilder: (context, index) {
                final news = hotNews[index];
                final post = posts[index];

                return StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('channels')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return const SizedBox.shrink();
                      }
                      final channels = snapshot.data!.docs[index];
                      return NewsItem(
                        image: post['newsPhoto'],
                        headlineText: post['newsTitle'],
                        sourceIcon: channels['logo'],
                        sourceName: post['channel'],
                        categoryText: post['category'],
                        sharedTimeText: news.sharedTimeText,
                        onTap: () {
                            return Navigate.navigatePush(
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
