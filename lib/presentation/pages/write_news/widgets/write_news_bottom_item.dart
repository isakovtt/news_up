import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants/app_color_filters.dart';
import '../../../../utils/constants/app_colors.dart';

class WriteNewsBottomItem extends StatelessWidget {
  const WriteNewsBottomItem({super.key, required this.icon});
  final String icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20.r,
      backgroundColor: AppColors.greyScale_50,
      child: SvgPicture.asset(
        icon,
        colorFilter: AppColorFilters.greyScale400SrcIn,
      ),
    );
  }
}
