import 'package:flutter/material.dart';

import 'widgets/comment_app_bar.dart';
import 'widgets/comment_footer.dart';
import 'widgets/comment_list_view.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommentAppBar(),
      body: CommentListView(),
      bottomNavigationBar: CommentFooter()
    );
  }
}
