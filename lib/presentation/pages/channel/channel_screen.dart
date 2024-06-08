import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/app_paddings.dart';
import '../../../utils/extensions/time_ago_extension.dart';
import '../../../utils/helpers/navigate.dart';
import '../../widgets/custom_basic_list_tile.dart';
import '../../widgets/global_progress_indicator.dart';
import '../detail/detail_news_screen.dart';
import 'widgets/channel_app_bar.dart';
import 'widgets/channel_logo.dart';

class ChannelScreen extends StatelessWidget {
  const ChannelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ChannelAppBar(),
      body: Column(
        children: [
          24.verticalSpace,
          const ChannelLogo(),
          32.verticalSpace,
          StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection('posts').snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const GlobalProgressIndicator();
                }
                return Padding(
                  padding: AppPaddings.h24,
                  child: StreamBuilder(
                      stream: FirebaseFirestore.instance
                          .collection('posts')
                          // .where('channel', isEqualTo: '')
                          .snapshots(),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return const SizedBox.shrink();
                        }
                        final posts = snapshot.data?.docs;

                        return ListView.separated(
                          padding: AppPaddings.b16,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: posts!.length,
                          physics: const NeverScrollableScrollPhysics(),
                          separatorBuilder: (context, index) =>
                              16.verticalSpace,
                          itemBuilder: (context, index) {
                            final post = posts[index];
                            final Timestamp timestamp = post['time'];
                            return StreamBuilder(
                              stream: FirebaseFirestore.instance
                                  .collection('channels')
                                  // .where('channel', isEqualTo: post['channel'])
                                  .snapshots(),
                              builder: (context, snapshot) {
                                if (!snapshot.hasData) {
                                  return const SizedBox.shrink();
                                }
                                final channel =
                                    snapshot.data!.docs.first.data();
                                return GlobalBasicListTile(
                                  image: post['newsPhoto'],
                                  categoryName: post['category'],
                                  title: post['newsTitle'],
                                  sourceIcon: channel['logo'],
                                  sourceName: post['channel'] + ' News',
                                  timeText: timestamp.toDate().toTimeAgo(),
                                  commentCount: post['commentsCount'].toString(),
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
                        );
                      }),
                );
              }),
        ],
      ),
    );
  }
}
