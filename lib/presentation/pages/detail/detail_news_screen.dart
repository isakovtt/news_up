import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'widgets/channel_list_tile.dart';
import 'widgets/detail_app_bar.dart';
import 'widgets/detail_footer.dart';
import 'widgets/detail_news_description.dart';
import 'widgets/detail_news_headline.dart';
import 'widgets/detail_news_image.dart';

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
      bottomNavigationBar: DetailFooter(),
    );
  }
}
