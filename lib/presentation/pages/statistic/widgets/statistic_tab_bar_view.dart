import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_text_styles.dart';
import 'statistic_chart.dart';
import 'statistic_daily_visits_title.dart';

class StatisticTabBarView extends StatelessWidget {
  const StatisticTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 550,
          child: TabBarView(
            physics: const BouncingScrollPhysics(),
            children: [
              Column(
                children: [
                  const StatisticDailyVisitsTitle(),
                  35.verticalSpace,
                  const SizedBox(
                    height: 280,
                    child: StatisticChart(),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: AppColors.greyScale_100,
                      child: SvgPicture.asset(
                        AppAssets.search,
                      ),
                    ),
                    title: Text(
                      'Views',
                      style: AppTextStyles.greyScale400s12W400,
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          '213K',
                          style: AppTextStyles.greyScale900s16W700,
                        ),
                        const Text(
                          '+12%',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              ListTile(
                leading: SvgPicture.asset(AppAssets.list),
              )
            ],
          ),
        ),
      ],
    );
  }
}
