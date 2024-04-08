import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';

class ExploreSegmentedBar extends StatelessWidget {
  const ExploreSegmentedBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        8.verticalSpace,
        SafeArea(
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
                  label: AppTexts.stories,
                  textColor: AppColors.greyScale_400,
                  selectedTextColor: AppColors.greyScale_900,
                ),
                SegmentTab(
                  label: AppTexts.topics,
                  textColor: AppColors.greyScale_400,
                  selectedTextColor: AppColors.greyScale_900,
                ),
                SegmentTab(
                  label: AppTexts.author,
                  textColor: AppColors.greyScale_400,
                  selectedTextColor: AppColors.greyScale_900,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
