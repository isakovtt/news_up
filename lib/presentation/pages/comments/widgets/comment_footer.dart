import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/cubits/comment/comment_cubit.dart';
import '../../../widgets/global_comment_input.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_texts.dart';

class CommentFooter extends StatelessWidget {
  const CommentFooter({super.key, required this.postId});

  final String postId;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CommentCubit>();

    return Padding(
      padding: AppPaddings.lr24b12,
      child: GlobalCommentInput(
        postId: '',
        height: 56,
        hintText: AppTexts.typeYourComment,
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              cubit.addComment(postId);
            },
            child: SvgPicture.asset(
              AppAssets.sendCommentIcon,
            ),
          ),
        ),
      ),
    );
  }
}
