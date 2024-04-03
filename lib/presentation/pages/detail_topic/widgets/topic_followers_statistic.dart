import 'package:flutter/material.dart';
import '../../profile/widgets/profile_header_statistics.dart';
import '../../../../utils/constants/app_texts.dart';

class TopicFollowersStatistic extends StatelessWidget {
  const TopicFollowersStatistic({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const ProfileHeaderStatistics(
        count: '213.5K',
        text: AppTexts.followers,
      ),
    );
  }
}
