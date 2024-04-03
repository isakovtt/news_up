import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'topic_authors_statistic.dart';
import 'topic_followers_statistic.dart';
import 'topic_stories_statistic.dart';
import '../../../widgets/global_vertical_divider.dart';

import 'topic_profile_image.dart';

class TopicAllHeaderStatistics extends StatelessWidget {
  const TopicAllHeaderStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TopicProfileImage(),
          40.horizontalSpace,
          const TopicFollowersStatistic(),
          const GlobalVerticalDivider(),
          const TopicAuthorsStatistic(),
          const GlobalVerticalDivider(),
          const TopicStoriesStatistic()
        ],
      ),
    );
  }
}
