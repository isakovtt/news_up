import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

class AppTextStyles {
  const AppTextStyles._();

  static TextStyle get primaryBaseS24W700 {
    return TextStyle(
        color: AppColors.primaryBase,
        fontSize: 24.sp,
        fontWeight: FontWeight.w700);
  }

  static TextStyle get greyScale900s24W700 {
    return TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.greyScale_900);
  }

  static TextStyle get greyScale400s14W400 {
    return TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.greyScale_400);
  }
}
