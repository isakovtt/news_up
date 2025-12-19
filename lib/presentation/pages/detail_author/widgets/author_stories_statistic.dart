import 'package:flutter/material.dart';

import '../../../../utils/constants/app_texts.dart';
import '../../profile/widgets/profile_header_statistics.dart';

class AuthorStoriesStatistic extends StatelessWidget {
  const AuthorStoriesStatistic({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const ProfileHeaderStatistics(
        count: '7',
        text: AppTexts.stories,
      ),
    );
  }
}
