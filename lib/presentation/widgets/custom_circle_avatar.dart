import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_colors.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({super.key, required this.image, this.backgroundColor});

  final String image;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 24.r,
      backgroundColor: backgroundColor ?? AppColors.white,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
