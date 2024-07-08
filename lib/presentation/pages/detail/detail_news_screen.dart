import 'package:flutter/material.dart';

import 'widgets/channel_list_tile.dart';
import 'widgets/detail_app_bar.dart';
import 'widgets/detail_footer.dart';
import 'widgets/detail_news_description.dart';
import 'widgets/detail_news_headline.dart';
import 'widgets/detail_news_image.dart';

class DetailNewsScreen extends StatefulWidget {
  const DetailNewsScreen({Key? key, required this.postId}) : super(key: key);

  final String postId;

  @override
  // ignore: library_private_types_in_public_api
  _DetailNewsScreenState createState() => _DetailNewsScreenState();
}

class _DetailNewsScreenState extends State<DetailNewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DetailAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ChannelListTile(postId: widget.postId),
            DetailNewsImage(postId: widget.postId),
            DetailNewsHeadline(postId: widget.postId),
            DetailNewsDescription(postId: widget.postId),
          ],
        ),
      ),
      bottomNavigationBar: Builder(
        builder: (BuildContext context) {
          final double keyboardHeight =
              MediaQuery.of(context).viewInsets.bottom;
          return AnimatedContainer(
            duration: const Duration(milliseconds: 0),
            padding: EdgeInsets.only(bottom: keyboardHeight),
            child: DetailFooter(postId: widget.postId),
          );
        },
      ),
    );
  }
}
