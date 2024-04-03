import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';

import '../../../widgets/global_vertical_divider.dart';
import 'profile_followers_statistic.dart';
import 'profile_following_statistic.dart';
import 'profile_image.dart';
import 'profile_stories_statistic.dart';

class ProfileAllHeaderStatistics extends StatelessWidget {
  const ProfileAllHeaderStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ProfileImage(),
          54.horizontalSpace,
          const ProfileStoriesStatistic(),
          const GlobalVerticalDivider(),
          const ProfileFollowersStatistic(),
          const GlobalVerticalDivider(),
          const ProfileFollowingStatistic(),
        ],
      ),
    );
  }
}
