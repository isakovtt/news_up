import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';

class StatisticListItem extends StatelessWidget {
  const StatisticListItem(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.percent,
      this.percentStyle,
      this.hasPercent = true});

  final String image;
  final String title;
  final String subtitle;
  final String percent;
  final TextStyle? percentStyle;
  final bool hasPercent;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155.w,
      height: 80.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.greyScale_200,
        ),
      ),
      child: Center(
        child: ListTile(
          horizontalTitleGap: 8.h,
          contentPadding: AppPaddings.l16,
          leading: CircleAvatar(
            backgroundColor: AppColors.greyScale_100,
            child: Center(
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            title,
            style: AppTextStyles.greyScale400s12W400,
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                subtitle,
                style: AppTextStyles.greyScale900s16W700,
              ),
              if (hasPercent == true)
                Text(
                  percent,
                  style: percentStyle,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
