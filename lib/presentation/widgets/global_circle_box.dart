import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_colors.dart';

class GlobalCircleBox extends StatelessWidget {
  const GlobalCircleBox({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48.r,
      height: 48.r,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: AppColors.greyScale_100,
          borderRadius: BorderRadius.all(
            Radius.circular(1000),
          ),
        ),
        child: Center(child: child),
      ),
    );
  }
}
