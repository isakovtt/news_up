import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../widgets/global_button.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_texts.dart';

class OnboardLoginButton extends StatelessWidget {
  const OnboardLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalButton(
      height: 56.h,
      width: 157.5.w,
      color: AppColors.white,
      border: Border.all(color: AppColors.primaryBase, width: 1),
      child: Center(
        child: Text(
          AppTexts.login,
          style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.primaryBase),
        ),
      ),
    );
  }
}
