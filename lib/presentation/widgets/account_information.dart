import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';

import '../../utils/constants/app_text_styles.dart';

class AccountInformation extends StatelessWidget {
  const AccountInformation({
    super.key,
    required this.name,
    required this.username,
    required this.bio,
    this.hasVerified = false,
    this.hasUsername = false,
  });

  final String name;
  final String username;
  final String bio;
  final bool hasVerified;
  final bool hasUsername;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              name,
              style: AppTextStyles.greyScale900s16W700,
            ),
            if (hasVerified == true) ...[
              4.horizontalSpace,
              SvgPicture.asset(
                AppAssets.checkVerified_02,
              ),
            ]
          ],
        ),
        if (hasUsername == true) ...[
          4.verticalSpace,
          Text(
            username,
            style: AppTextStyles.greyScale400s12W500,
          ),
        ],
        4.verticalSpace,
        Text(
          textAlign: TextAlign.start,
          bio,
          style: AppTextStyles.greyScale400s14W400,
        ),
      ],
    );
  }
}
