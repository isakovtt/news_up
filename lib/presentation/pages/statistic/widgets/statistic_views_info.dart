import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/statistic/widgets/statistic_list_item.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';
import 'package:newsup_app/utils/constants/app_texts.dart';

class StatisticViewsInfo extends StatelessWidget {
  const StatisticViewsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return StatisticListItem(
      image: AppAssets.analysisImage,
      title: AppTexts.views,
      subtitle: '213K',
      percent: '+12%',
      percentStyle: TextStyle(
        fontSize: 10.sp,
        color: AppColors.successBase,
      ),
    );
  }
}
