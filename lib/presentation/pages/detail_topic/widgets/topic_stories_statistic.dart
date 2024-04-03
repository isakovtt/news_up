import 'package:flutter/material.dart';
import 'package:newsup_app/presentation/pages/profile/widgets/profile_header_statistics.dart';
import 'package:newsup_app/utils/constants/app_texts.dart';

class TopicStoriesStatistic extends StatelessWidget {

  const TopicStoriesStatistic({ super.key });

   @override
   Widget build(BuildContext context) {
       return GestureDetector(
      onTap: () {},
      child: const ProfileHeaderStatistics(
        count: '2350',
        text: AppTexts.stories,
      ),
    );
  }
}