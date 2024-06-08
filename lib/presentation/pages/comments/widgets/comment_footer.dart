import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../widgets/global_comment_input.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_texts.dart';

class CommentFooter extends StatelessWidget {
  const CommentFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.lr24b12,
      child: GlobalCommentInput(
        postId: '',
        height: 56,
        hintText: AppTexts.typeYourComment,
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            AppAssets.sendCommentIcon,
          ),
        ),
      ),
    );
  }
}
