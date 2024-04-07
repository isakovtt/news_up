import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_texts.dart';
import 'statistic_list_item.dart';

class StatisticReadersInfo extends StatelessWidget {
  const StatisticReadersInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  StatisticListItem(
      image: AppAssets.openBookImage,
      title: AppTexts.readers,
      subtitle: '114',
      percent: '+0.5%',
      percentStyle: TextStyle(
        fontSize: 10.sp,
        color: AppColors.successBase,
      ),
    );
  }
}
