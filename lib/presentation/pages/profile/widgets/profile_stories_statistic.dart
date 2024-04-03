import 'package:flutter/material.dart';

import '../../../../utils/constants/app_texts.dart';
import 'profile_header_statistics.dart';

class ProfileStoriesStatistic extends StatelessWidget {
  const ProfileStoriesStatistic({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const ProfileHeaderStatistics(
        count: '42',
        text: AppTexts.stories,
      ),
    );
  }
}
