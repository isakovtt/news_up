import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          child: Row(
            children: [
              const Icon(
                Icons.circle_outlined,
                size: 24,
                color: AppColors.greyScale_200,
              ),
              8.horizontalSpace,
              Text(
                AppTexts.rememberMe,
                style: AppTextStyles.greyScale900s14W500,
              ),
            ],
          ),
        ),
        const Spacer(),
        GestureDetector(
          child: Text(
            AppTexts.forgotPassword,
            style: AppTextStyles.primaryBaseS14W700,
          ),
        )
      ],
    );
  }
}
