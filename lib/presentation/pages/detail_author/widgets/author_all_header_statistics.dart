import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_paddings.dart';
import '../../../widgets/global_vertical_divider.dart';
import 'author_followers_statistic.dart';
import 'author_following_statistic.dart';
import 'author_profile_image.dart';
import 'author_stories_statistic.dart';

class AuthorAllHeaderStatistics extends StatelessWidget {
  const AuthorAllHeaderStatistics({super.key,  this.image});
final String? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           AuthorProfileImage( image: image),
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
