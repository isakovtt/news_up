import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_texts.dart';
import 'global_button.dart';

class InnerColorlessButton extends StatelessWidget {
  const InnerColorlessButton({super.key, this.onTap, this.height, this.width,  this.text});

 final Function()? onTap;
 final double? height;
 final double? width;
 final String? text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: GlobalButton(
        height: height ?? 56.h,
        width: width?? 157.5.w,
        color: AppColors.white,
        border: Border.all(color: AppColors.primaryBase, width: 1),
        child: Center(
          child: Text(
            text??
            AppTexts.login,
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryBase),
          ),
        ),
      ),
    );
  }
}
