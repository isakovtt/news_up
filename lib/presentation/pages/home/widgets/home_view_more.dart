import 'package:flutter/material.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';

class HomeViewMore extends StatelessWidget {
  const HomeViewMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppTexts.breakingNews,
          style: AppTextStyles.greyScale900s16W700,
        ),
        const Spacer(),
        Padding(
          padding: AppPaddings.r24,
          child: Text(
            AppTexts.viewMore,
            style: AppTextStyles.primaryBaseS14W500,
          ),
        ),
      ],
    );
  }
}
