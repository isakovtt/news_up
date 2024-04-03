import 'package:flutter/material.dart';
import '../../profile/widgets/profile_header_statistics.dart';
import '../../../../utils/constants/app_texts.dart';

class AuthorFollowingStatistic extends StatelessWidget {
  const AuthorFollowingStatistic({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const ProfileHeaderStatistics(
        count: '321',
        text: AppTexts.following,
      ),
    );
  }
}
