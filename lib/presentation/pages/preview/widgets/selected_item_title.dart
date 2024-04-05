import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants/app_color_filters.dart';
import '../../../../utils/constants/app_text_styles.dart';

class SelectedItemTitle extends StatelessWidget {
  const SelectedItemTitle( {
    super.key,
    required this.icon,
    required this.text,
    this.height,
  });

  final String icon;
  final String text;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          height: height ?? 22,
          icon,
          colorFilter: AppColorFilters.greyScale400SrcIn,
        ),
        12.horizontalSpace,
        Text(
          text,
          style: AppTextStyles.greyScale900s16W700,
        )
      ],
    );
  }
}
