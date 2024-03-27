import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';

class DraftListTile extends StatelessWidget {
  const DraftListTile(
      {super.key,
      required this.image,
      required this.editTimeText,
      required this.headlinaText,
      this.verticalDots = false,
      this.seenCount = false,
      this.seenText});

  final String image;
  final String editTimeText;
  final String headlinaText;
  final String? seenText;
  final bool verticalDots;
  final bool seenCount;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 12.h,
      contentPadding: AppPaddings.h24,
      leading: Image.asset(image),
      title: Row(
        children: [
          Text(
            editTimeText,
            style: AppTextStyles.greyScale400s12W500,
          ),
          const Spacer(),
          if (verticalDots == true) ...[
            SvgPicture.asset(
              AppAssets.dotsGrey,
            ),
          ],
          if (seenCount == true) ...[
            SvgPicture.asset(
              height: 16.h,
              AppAssets.eye,
              colorFilter: const ColorFilter.mode(
                AppColors.greyScale_400,
                BlendMode.srcIn,
              ),
            ),
            4.horizontalSpace,
            Text(
              seenText!,
              style: AppTextStyles.greyScale400s12W500,
            )
          ]
        ],
      ),
      subtitle: Text(
        headlinaText,
        style: AppTextStyles.greyScale900s14W700,
      ),
    );
  }
}
