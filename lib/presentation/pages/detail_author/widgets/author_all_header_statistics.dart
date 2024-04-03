import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';

import '../../../widgets/global_vertical_divider.dart';
import 'author_followers_statistic.dart';
import 'author_following_statistic.dart';
import 'author_profile_image.dart';
import 'author_stories_statistic.dart';

class AuthorAllHeaderStatistics extends StatelessWidget {
  const AuthorAllHeaderStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const AuthorProfileImage(),
          54.horizontalSpace,
          const AuthorStoriesStatistic(),
          const GlobalVerticalDivider(),
          const AuthorFollowersStatistic(),
          const GlobalVerticalDivider(),
          const AuthorFollowingStatistic(),
        ],
      ),
    );
  }
}
