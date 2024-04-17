import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../utils/constants/app_assets.dart';
import '../../../../../../utils/constants/app_colors.dart';
import '../../../../../../utils/constants/app_paddings.dart';
import '../../../../../../utils/constants/app_text_styles.dart';

class IdentityTypeBox extends StatelessWidget {
  const IdentityTypeBox({
    super.key,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.asset,
    this.onTap,
  });
  final String title;
  final String subtitle;
  final String asset;
  final Color color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.greyScale_50,
          border: Border.all(
            color: color,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: AppPaddings.v16h20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(asset),
              16.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.greyScale900s14W700,
                  ),
                  4.verticalSpace,
                  Text(
                    subtitle,
                    style: AppTextStyles.greyScale400s12W400,
                  )
                ],
              ),
              const Spacer(),
              SvgPicture.asset(
                AppAssets.chevronRight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
