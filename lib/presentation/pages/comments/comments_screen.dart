import 'package:flutter/material.dart';

import 'widgets/comment_app_bar.dart';
import 'widgets/comment_footer.dart';
import 'widgets/comment_list_view.dart';

class CommentsScreen extends StatefulWidget {
  const CommentsScreen({super.key, required this.postId});

  final String postId;

  @override
  State<CommentsScreen> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommentAppBar(),
      body: CommentListView(postId: widget.postId),
      bottomNavigationBar: Builder(builder: (context) {
        final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
        return AnimatedContainer(
            duration: const Duration(milliseconds: 0),
            padding: EdgeInsets.only(bottom: keyboardHeight),
            child: CommentFooter(postId: widget.postId));
      }),
    );
  }
}
