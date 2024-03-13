import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../widgets/global_button.dart';

class OnboardGetStartedButton extends StatelessWidget {
  const OnboardGetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalButton(
      height: 56.h,
      width: 157.5.w,
      color: AppColors.greyScale_900,
      child: Center(
        child: Text(
          AppTexts.getStarted,
          style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.white),
        ),
      ),
    );
  }
}
