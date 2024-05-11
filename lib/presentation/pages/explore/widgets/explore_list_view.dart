import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

                  return GlobalBasicListTile(
                    image: post['newsPhoto'],
                    title: post['newsTitle'],
                    sourceIcon: channels['logo'],
                    sourceName: post['channel'] + ' News',
                    categoryName: post['category'],
                    timeText: timeAgo,
                    commentText: post['commentsCount'].toString(),
                    hasSource: true,
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
          ),
        );
      },
    );
  }
}
