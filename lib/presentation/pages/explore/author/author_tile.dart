import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../widgets/global_black_button.dart';

class AuthorTile extends StatefulWidget {
  const AuthorTile({
    super.key,
    required this.name,
    required this.username,
    required this.profileIcon,
    this.hasVerifiedIcon = false,
    this.hasProfileIcon = false,
    this.hasAvatar = false,
  });

  final String name;
  final String username;
  final String profileIcon;
  final bool hasVerifiedIcon;
  final bool hasProfileIcon;
  final bool hasAvatar;

  @override
  State<AuthorTile> createState() => _AuthorTileState();
}

class _AuthorTileState extends State<AuthorTile> {
  bool isFollowing = false;
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
      leading: widget.hasAvatar
          ? CircleAvatar(
              backgroundColor: AppColors.greyScale_100,
              child: widget.hasProfileIcon
                  ? Image.network(widget.profileIcon)
                  : Image.asset(widget.profileIcon),
            )
          : const Icon(
              Icons.account_circle_rounded,
              size: 42,
              color: AppColors.greyScale_400,
            ),
      title: Row(
        children: [
          Text(
            widget.name,
            style: AppTextStyles.greyScale900s14W700,
          ),
          5.horizontalSpace,
          if (widget.hasVerifiedIcon == true)
            SvgPicture.asset(AppAssets.checkVerified_02),
        ],
      ),
      subtitle: Text(
        widget.username,
        style: AppTextStyles.greyScale400s12W400,
      ),
      trailing: GestureDetector(
        onTap: () {
          setState(() {
            isFollowing = !isFollowing;
          });
        },
        child: isFollowing
            ? GlobalBlackButton(
                width: 80.h,
                text: 'Following',
                color: AppColors.white,
                border: Border.all(
                  color: AppColors.secondaryBase,
                ),
                style: AppTextStyles.secondBaseS12W400,
              )
            : const GlobalBlackButton(text: AppTexts.follow),
      ),
    );
  }
}
