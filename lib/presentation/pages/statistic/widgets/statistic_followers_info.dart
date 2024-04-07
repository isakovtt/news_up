import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/statistic/widgets/statistic_list_item.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';
import 'package:newsup_app/utils/constants/app_texts.dart';

class StatisticFollowersInfo extends StatelessWidget {
  const StatisticFollowersInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  StatisticListItem(
      image: AppAssets.followImage,
      title: AppTexts.followers,
      subtitle: '400',
      percent: '-0.2%',
      percentStyle: TextStyle(
        fontSize: 10.sp,
        color: AppColors.errorBase,
      ),
    );
  }
}
