import 'package:flutter/material.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

class GlobalColorlessCircle extends StatelessWidget {
  const GlobalColorlessCircle({super.key, this.onTap, this.child});

  final void Function()? onTap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: AppColors.white,
          border: Border.all(
            width: 2,
            color: AppColors.greyScale_200,
          ),
        ),
        child: child,
      ),
    );
  }
}
