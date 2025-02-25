import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

import 'statistic_chart.dart';
import 'statistic_daily_visits_title.dart';
import 'statistic_followers_info.dart';
import 'statistic_ratio_info.dart';
import 'statistic_readers_info.dart';
import 'statistic_views_info.dart';

class StatisticTabBarView extends StatelessWidget {
  const StatisticTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 600.h,
          child: TabBarView(
            physics: const BouncingScrollPhysics(),
            children: [
              Column(
                children: [
                  const StatisticDailyVisitsTitle(),
                  35.verticalSpace,
                  // SizedBox(
                  //   height: 280.h,
                  //   child: const StatisticChart(),
                  // ),
                  40.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const StatisticViewsInfo(),
                      16.horizontalSpace,
                      const StatisticReadersInfo(),
                    ],
                  ),
                  16.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const StatisticFollowersInfo(),
                      16.horizontalSpace,
                      const StatisticRatioInfo(),
                    ],
                  )
                ],
              ),
              const Center(
                  child: Text(
                'No data',
                style: TextStyle(
                  color: AppColors.greyScale_500,
                ),
              ))
            ],
          ),
        ),
      ],
    );
  }
}
