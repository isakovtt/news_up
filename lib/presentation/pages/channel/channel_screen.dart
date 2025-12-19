import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/widgets/inside_colored_button.dart';

import '../../../utils/constants/app_paddings.dart';
import '../../../utils/extensions/time_ago_extension.dart';
import '../../../utils/helpers/navigate.dart';
import '../../widgets/custom_basic_list_tile.dart';
import '../detail/detail_news_screen.dart';
import 'widgets/channel_app_bar.dart';
import 'widgets/channel_logo.dart';

class ChannelScreen extends StatelessWidget {
  const ChannelScreen({super.key, required this.channelId});
  final QueryDocumentSnapshot<Map<String, dynamic>> channelId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChannelAppBar(channelName: channelId['channel'] + ' News'),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            24.verticalSpace,
            ChannelLogo(channel: channelId),
            16.verticalSpace,
            InsideColoredButton(
              height: 42.h,
              width: 109,
              text: 'Subscribe',
            ),
            36.verticalSpace,
            Padding(
              padding: AppPaddings.h24,
              child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('posts')
                    .where('channel', isEqualTo: channelId['channel'])
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
                    separatorBuilder: (context, index) => 16.verticalSpace,
                    itemBuilder: (context, index) {
                      final post = posts[index];
                      final Timestamp timestamp = post['time'];
                      return GlobalBasicListTile(
                        image: post['newsPhoto'],
                        categoryName: post['category'],
                        title: post['newsTitle'],
                        sourceIcon: channelId['logo'],
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
