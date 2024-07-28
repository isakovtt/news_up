import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/explore/widgets/explore_shimmer.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/extensions/time_ago_extension.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../../widgets/news_item.dart';
import '../../detail/detail_news_screen.dart';

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
              final post = posts[index];
              final Timestamp timestamp = post['time'];
              return StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('channels')
                    .where('channel', isEqualTo: post['channel'])
                    .snapshots().delay(const Duration(seconds: 2)),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const ExploreShimmer();
                  }
                  final channels = snapshot.data!.docs.first.data();
                  return NewsItem(
                    image: post['newsPhoto'],
                    headlineText: post['newsTitle'],
                    sourceIcon: channels['logo'],
                    sourceName: post['channel'],
                    categoryText: post['category'],
                    sharedTimeText: timestamp.toDate().toTimeAgo(),
                    onTap: () {
                      return Navigate.navigatePush(
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
