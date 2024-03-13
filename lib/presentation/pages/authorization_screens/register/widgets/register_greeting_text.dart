import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_text_styles.dart';
import '../../../../../utils/constants/app_texts.dart';

class RegisterGreetingText extends StatelessWidget {
  const RegisterGreetingText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppTexts.join,
          style: AppTextStyles.greyScale900s24W700,
        ),
        5.horizontalSpace,
        Text(
          AppTexts.newsUp,
          style: AppTextStyles.primaryBaseS24W700,
        ),
      ],
    );
  }
}
