import 'package:flutter/material.dart';
import 'package:newsup_app/presentation/pages/profile/widgets/profile_header_statistics.dart';
import 'package:newsup_app/utils/constants/app_texts.dart';

class TopicAuthorsStatistic extends StatelessWidget {

  const TopicAuthorsStatistic({ super.key });

   @override
   Widget build(BuildContext context) {
       return GestureDetector(
      onTap: () {},
      child: const ProfileHeaderStatistics(
        count: '411',
        text: AppTexts.author,
      ),
    );
  }
}