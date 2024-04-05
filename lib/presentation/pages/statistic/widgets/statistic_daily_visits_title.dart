import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';

class StatisticDailyVisitsTitle extends StatelessWidget {
  const StatisticDailyVisitsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppTexts.dailyVisits,
          style: AppTextStyles.greyScale900s18W700,
        ),
        const Spacer(),
        CircleAvatar(
          radius: 4.r,
          backgroundColor: AppColors.primaryBase,
        ),
        8.horizontalSpace,
        Text(
          AppTexts.browser,
          style: AppTextStyles.primaryBaseS12W500,
        ),
        16.horizontalSpace,
        CircleAvatar(
          radius: 4.r,
          backgroundColor: AppColors.greyScale_900,
        ),
        8.horizontalSpace,
        Text(
          AppTexts.mobile,
          style: AppTextStyles.greyScale900s12W500,
        )
      ],
    );
  }
}
