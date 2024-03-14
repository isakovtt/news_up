import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

import '../../utils/constants/app_text_styles.dart';

class GlobalNavBarItem extends StatelessWidget {
  const GlobalNavBarItem({super.key, required this.icon, required this.text});
  final String icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 67,
        width: 69,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              height: 24.r,
              width: 24.r,
              colorFilter: const ColorFilter.mode(
                AppColors.greyScale_400,
                BlendMode.srcIn,
              ),
            ),
            8.verticalSpace,
            Text(
              text,
              style: AppTextStyles.greyScale400s12W400.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
