import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';

class DraftSegmentedBar extends StatelessWidget {
  const DraftSegmentedBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: AppPaddings.h24,
        child: SegmentedTabControl(
          textStyle: AppTextStyles.greyScale400s12W500,
          selectedTextStyle: AppTextStyles.greyScale900s12W700,
          height: 40.h,
          radius: const Radius.circular(12),
          backgroundColor: AppColors.greyScale_100,
          indicatorPadding: AppPaddings.all4,
          indicatorColor: AppColors.white,
          tabTextColor: Colors.black45,
          selectedTabTextColor: Colors.white,
          splashColor: AppColors.white,
          tabs: const [
            SegmentTab(
              label: AppTexts.draft,
              textColor: AppColors.greyScale_400,
              selectedTextColor: AppColors.greyScale_900,
            ),
            SegmentTab(
              label: AppTexts.publish,
              textColor: AppColors.greyScale_400,
              selectedTextColor: AppColors.greyScale_900,
            ),
          ],
        ),
      ),
    );
  }
}
