import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';

class GlobalVerticalDivider extends StatelessWidget {
  const GlobalVerticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 1.w,
      color: AppColors.greyScale_200,
      margin: AppPaddings.h12,
    );
  }
}
