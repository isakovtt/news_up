import 'package:flutter/material.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';

class CommentDescriptionText extends StatelessWidget {
  const CommentDescriptionText({super.key, required this.commentDescriptionText});

  final String commentDescriptionText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.l76r24,
      child: Text(
        commentDescriptionText,
        style: AppTextStyles.greyScale900s12W400,
      ),
    );
  }
}
