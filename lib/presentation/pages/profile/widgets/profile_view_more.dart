import 'package:flutter/material.dart';

import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../statistic/statistic_screen.dart';

class ProfileViewMore extends StatelessWidget {
  const ProfileViewMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  AppPaddings.h24,
      child: Row(
        children: [
          Text(
            'Your Stories',
            style: AppTextStyles.greyScale900s16W700,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigate.navigateReplacePush(
                context,
                const StatisticScreen(),
              );
            },
            child: Text(
              'Statistics',
              style: AppTextStyles.primaryBaseS14W500,
            ),
          ),
        ],
      ),
    );
  }
}
