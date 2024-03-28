import 'package:flutter/material.dart';

import '../../utils/constants/app_colors.dart';

class GlobalDot extends StatelessWidget {
  const GlobalDot.min({
    super.key,
    this.radius = 3,
    this.backgroundColor = AppColors.white,
    this.child,
  });
  const GlobalDot.max({
    super.key,
    this.radius = 4,
    this.backgroundColor = AppColors.greyScale_200,
    this.child,
  });
  const GlobalDot.notification({
    super.key,
    this.radius = 5.5,
    this.backgroundColor = AppColors.errorBase,
    this.child,
  });

  final double? radius;
  final Color? backgroundColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: backgroundColor,
      child: child,
    );
  }
}
