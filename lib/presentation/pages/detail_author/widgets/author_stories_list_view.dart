import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/extensions/time_ago_extension.dart';

import '../../../../data/models/author_stories_model.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../widgets/stories_list_tile.dart';

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
          final data = snapshot.data!.docs;
          return ListView.separated(
            padding: AppPaddings.h24,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: data.length,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => 16.verticalSpace,
            itemBuilder: (context, index) {
              // final stories = authorStories[index];

              final post = snapshot.data!.docs.first.data();

              final Timestamp timestamp = post['time'] ?? '0';

              return StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('comments')
                      .doc()
                      .collection('postComments')
                      .snapshots(),
                  builder: (context, snapshot) {
                    final commentCount = snapshot.data!.docs;

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
                          return StoriesListTile(
                            image: post['newsPhoto'],
                            cotegoryName: post['category'],
                            sourceIcon: channels['logo'],
                            sourceName: post['channel'] + ' News',
                            commentCountText: commentCount.length.toString(),
                            headlineText: post['newsTitle'],
                            timeText: timestamp.toDate().toTimeAgo(),
                          );
                        });
                  });
            },
          );
        });
  }
}
