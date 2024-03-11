import 'package:flutter/material.dart';

import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';

class LoginGreetingText extends StatelessWidget {
  const LoginGreetingText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          AppTexts.welcomeBackTo,
          style: AppTextStyles.greyScale900s24W700,
        ),
        Text(
          AppTexts.newsUp,
          style: AppTextStyles.primaryBaseS24W700,
        )
      ],
    );
  }
}
