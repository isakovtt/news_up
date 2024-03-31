import 'package:flutter/material.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';

class TopAuthorHeaderText extends StatelessWidget {
  const TopAuthorHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: Text(
        AppTexts.topAuthor,
        style: AppTextStyles.greyScale900s16W700,
      ),
    );
  }
}
