import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants/app_assets.dart';
import '../../utils/constants/app_box_decorations.dart';
import '../../utils/constants/app_color_filters.dart';
import '../../utils/constants/app_paddings.dart';
import '../../utils/constants/app_text_styles.dart';
import '../../utils/constants/app_texts.dart';

class GlobalNextButton extends StatelessWidget {
  const GlobalNextButton({super.key, this.onTap});
final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.h,
        width: 83.w,
        decoration: AppBoxDecorations.greyScale900R12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: AppPaddings.l7,
              child: Text(
                AppTexts.next,
                style: AppTextStyles.whiteS16W500,
              ),
            ),
            2.horizontalSpace,
            SvgPicture.asset(
              AppAssets.chevronRight,
              colorFilter: AppColorFilters.whiteSrcIn,
            ),
          ],
        ),
      ),
    );
  }
}
