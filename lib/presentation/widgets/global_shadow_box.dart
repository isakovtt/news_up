import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_colors.dart';

class GlobalShadowBox extends StatelessWidget {
  const GlobalShadowBox({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.greyScale_100,
            spreadRadius: 17.r,
            blurStyle: BlurStyle.inner,
            blurRadius: 50.r,
            offset: const Offset(9, 9),
          ),
        ],
      ),
      child: child,
    );
  }
}
