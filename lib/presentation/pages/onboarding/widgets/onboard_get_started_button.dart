import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../widgets/global_button.dart';

class InsideColoredButton extends StatelessWidget {
  const InsideColoredButton({
    super.key,
    this.onTap,
    this.height,
    this.width,
    this.text,
    this.color,
  });

  final void Function()? onTap;
  final double? height;
  final double? width;
  final String? text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: GlobalButton(
        height: height ?? 56.h,
        width: width ?? 157.5.w,
        color: color ?? AppColors.greyScale_900,
        child: Center(
          child: Text(
            text ?? AppTexts.getStarted,
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
