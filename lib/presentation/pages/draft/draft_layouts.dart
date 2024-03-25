import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';

class DraftLayouts extends StatelessWidget {
  const DraftLayouts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: Row(
        children: [
           Text('6 Files Draft',style: AppTextStyles.greyScale400s14W400,),
          const Spacer(),
          SvgPicture.asset(
            AppAssets.layoutGrid,
            colorFilter: const ColorFilter.mode(
              AppColors.greyScale_400,
              BlendMode.srcIn,
            ),
          ),
          8.horizontalSpace,
          SvgPicture.asset(
            AppAssets.ayoutList,
            colorFilter: const ColorFilter.mode(
              AppColors.primaryBase,
              BlendMode.srcIn,
            ),
          ),
        ],
      ),
    );
  }
}
