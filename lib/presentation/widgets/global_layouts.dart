import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants/app_assets.dart';
import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_paddings.dart';
import '../../utils/constants/app_text_styles.dart';

class GlobalLayouts extends StatelessWidget {
  const GlobalLayouts({super.key, required this.text, this.padding});

  final String text;
  final EdgeInsetsGeometry? padding;

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
          SvgPicture.asset(
            AppAssets.layoutGrid,
            colorFilter: const ColorFilter.mode(
              AppColors.primaryBase,
              BlendMode.srcIn,
            ),
          ),
          8.horizontalSpace,
          SvgPicture.asset(
            AppAssets.ayoutList,
            colorFilter: const ColorFilter.mode(
              AppColors.greyScale_900,
              BlendMode.srcIn,
            ),
          ),
        ],
      ),
    );
  }
}
