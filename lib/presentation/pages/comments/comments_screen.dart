import 'package:flutter/material.dart';

import 'widgets/comment_app_bar.dart';
import 'widgets/comment_footer.dart';
import 'widgets/comment_list_view.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key, required this.postId});

  final String postId;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CommentAppBar(),
      body: CommentListView(postId: postId),
      bottomNavigationBar: const CommentFooter()
    );
  }
}
