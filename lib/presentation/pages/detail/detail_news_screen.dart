import 'package:flutter/material.dart';

import 'widgets/channel_list_tile.dart';
import 'widgets/detail_app_bar.dart';
import 'widgets/detail_footer.dart';
import 'widgets/detail_news_description.dart';
import 'widgets/detail_news_headline.dart';
import 'widgets/detail_news_image.dart';

class DetailNewsScreen extends StatelessWidget {
  const DetailNewsScreen({super.key, required this.postId});

  final String postId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DetailAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ChannelListTile(postId: postId),
            DetailNewsImage(postId: postId),
            DetailNewsHeadline(postId: postId),
            DetailNewsDescription(postId: postId),
          ],
        ),
      ),
      bottomNavigationBar: const DetailFooter(),
    );
  }
}
