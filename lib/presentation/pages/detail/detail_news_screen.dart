import 'package:flutter/material.dart';

import '../../widgets/global_comment_input.dart';
import 'channel_list_tile.dart';
import 'detail_app_bar.dart';
import 'detail_news_description.dart';
import 'detail_news_headline.dart';
import 'detail_news_image.dart';

class DetailNewsScreen extends StatelessWidget {
  const DetailNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: DetailAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ChannelListTile(),
            DetailNewsImage(),
            DetailNewsHeadline(),
            DetailNewsDescription(),
          ],
        ),
      ),
      bottomNavigationBar: GlobalCommentInput(),
      resizeToAvoidBottomInset: false,
      

    );
  }
}
