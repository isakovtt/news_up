import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants/app_assets.dart';
import '../../utils/constants/app_paddings.dart';
import '../../utils/constants/app_text_styles.dart';

class GlobalLayouts extends StatelessWidget {
  const GlobalLayouts(
      {super.key,
      required this.text,
      this.padding,
      this.listOnTap,
      this.gridOnTap,
      this.listColorFilter,
      this.gridColorFilter});

  final String text;
  final EdgeInsetsGeometry? padding;
  final Function()? listOnTap;
  final Function()? gridOnTap;
  final ColorFilter? listColorFilter;
  final ColorFilter? gridColorFilter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? AppPaddings.h24,
      child: Row(
        children: [
          Text(
            text,
            style: AppTextStyles.greyScale900s16W700,
          ),
          const Spacer(),
          GestureDetector(
            onTap: gridOnTap,
            child: SvgPicture.asset(
              AppAssets.layoutGrid,
              colorFilter: gridColorFilter,
            ),
          ),
          8.horizontalSpace,
          GestureDetector(
            onTap: listOnTap,
            child: SvgPicture.asset(
              AppAssets.ayoutList,
              colorFilter: listColorFilter,
            ),
          ),
        ],
      ),
    );
  }
}
