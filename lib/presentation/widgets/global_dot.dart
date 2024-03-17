import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

class GlobalDot extends StatelessWidget {
  const GlobalDot({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 4.r,
      minRadius: 4.r,
      backgroundColor: AppColors.greyScale_200,
    );
  }
}
