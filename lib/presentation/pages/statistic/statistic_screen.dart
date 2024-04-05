import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/app_paddings.dart';
import 'widgets/statistic_app_bar.dart';
import 'widgets/statistic_segmented_bar.dart';
import 'widgets/statistic_tab_bar_view.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StatisticAppBar(),
      body: DefaultTabController(
        length: 2,
        child: Padding(
          padding: AppPaddings.h24,
          child: Column(
            children: [
              const StatisticSegmentedBar(),
              40.verticalSpace,
              const StatisticTabBarView(),
            ],
          ),
        ),
      ),
    );
  }
}
