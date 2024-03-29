import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_text_styles.dart';

class GlobalBlackButton extends StatelessWidget {
  const GlobalBlackButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74.w,
      height: 32.h,
      decoration: BoxDecoration(
        color: AppColors.greyScale_900,
        borderRadius: BorderRadius.circular(
          1000,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: AppTextStyles.whiteS12W400,
        ),
      ),
    );
  }
}
