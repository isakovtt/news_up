import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';

class CommentHeaderTile extends StatelessWidget {
  const CommentHeaderTile({super.key, required this.profilePicture, required this.username, required this.timeText});

  final String profilePicture;
  final String username;
  final String timeText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: ListTile(
        minVerticalPadding: 12,
        horizontalTitleGap: 12,
        isThreeLine: true,
        contentPadding: const EdgeInsets.all(0),
        leading: CircleAvatar(
          backgroundColor: AppColors.greyScale_200,
          child: Image.asset(
            profilePicture,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          username,
          style: AppTextStyles.greyScale900s14W700,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              timeText,
              style: AppTextStyles.greyScale400s12W500,
            ),
          ],
        ),
        trailing: SvgPicture.asset(
          AppAssets.dotsGrey,
        ),
      ),
    );
  }
}
