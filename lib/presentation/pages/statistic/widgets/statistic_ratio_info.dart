import 'package:flutter/material.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_texts.dart';
import 'statistic_list_item.dart';

class StatisticRatioInfo extends StatelessWidget {
  const StatisticRatioInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const StatisticListItem(
      image: AppAssets.ratioImage,
      title: AppTexts.ratio,
      subtitle: '65.15%',
      hasPercent: false,
      percent: '',
    );
  }
}
