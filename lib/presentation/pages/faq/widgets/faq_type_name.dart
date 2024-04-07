import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_text_styles.dart';

class FaqTypeName extends StatelessWidget {
  const FaqTypeName({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              AppAssets.usingNewsupIcon,
              height: 22,
              width: 22,
            ),
            10.horizontalSpace,
            Text(
              title,
              style: AppTextStyles.greyScale900s16W700,
            ),
            const Spacer(),
            SvgPicture.asset(
              AppAssets.chevronUp,
            ),
          ],
        ),
        16.verticalSpace,
        const Divider(
          height: 1,
          color: AppColors.greyScale_200,
        ),
      ],
    );
  }
}
