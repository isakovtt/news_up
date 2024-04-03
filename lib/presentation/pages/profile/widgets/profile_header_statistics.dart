import 'package:flutter/material.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';

class ProfileHeaderStatistics extends StatelessWidget {
  const ProfileHeaderStatistics({
    super.key,
    required this.count,
    required this.text,
  });

  final String count;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: AppTextStyles.greyScale900s14W700,
        ),
        Text(
          text,
          style: AppTextStyles.greyScale400s12W400,
        )
      ],
    );
  }
}
