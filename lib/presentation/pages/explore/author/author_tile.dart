import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../widgets/global_black_button.dart';

class AuthorTile extends StatelessWidget {
  const AuthorTile(
      {super.key,
      required this.name,
      required this.username,
      required this.profileIcon,
      this.hasVerifiedIcon = false});

  final String name;
  final String username;
  final String profileIcon;
  final bool hasVerifiedIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      tileColor: AppColors.greyScale_50,
      contentPadding: AppPaddings.h16,
      minVerticalPadding: 0,
      horizontalTitleGap: 11.w,
      leading: CircleAvatar(
        backgroundColor: AppColors.greyScale_100,
        child: Image.asset(profileIcon),
      ),
      title: Row(
        children: [
          Text(
            name,
            style: AppTextStyles.greyScale900s14W700,
          ),
          5.horizontalSpace,
          if (hasVerifiedIcon == true)
            SvgPicture.asset(AppAssets.checkVerified_02),
        ],
      ),
      subtitle: Text(
        username,
        style: AppTextStyles.greyScale400s12W400,
      ),
      trailing: const GlobalBlackButton(
        text: AppTexts.follow,
      ),
    );
  }
}
