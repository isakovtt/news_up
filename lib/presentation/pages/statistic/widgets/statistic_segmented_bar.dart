import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:flutter/material.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';
import 'package:newsup_app/utils/constants/app_texts.dart';

class StatisticSegmentedBar extends StatelessWidget {
  const StatisticSegmentedBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SegmentedTabControl(
        textStyle: AppTextStyles.greyScale400s12W500,
        selectedTextStyle: AppTextStyles.greyScale900s12W700,
        height: 40,
        radius: const Radius.circular(12),
        backgroundColor: AppColors.greyScale_200,
        indicatorPadding: AppPaddings.all4,
        indicatorColor: AppColors.white,
        tabTextColor: Colors.black45,
        selectedTabTextColor: Colors.white,
        splashColor: AppColors.white,
        tabs: const [
          SegmentTab(
            label: AppTexts.stories,
            textColor: Colors.black26,
            selectedTextColor: AppColors.greyScale_900,
          ),
          SegmentTab(
            label: AppTexts.response,
            selectedTextColor: AppColors.greyScale_900,
            textColor: Colors.black26,
          ),
        ],
      ),
    );
  }
}
