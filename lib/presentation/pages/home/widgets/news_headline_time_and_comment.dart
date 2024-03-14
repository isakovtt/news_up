import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';

class NewsHeadlineTimeAndComment extends StatelessWidget {
  const NewsHeadlineTimeAndComment(
      {super.key, required this.clockText, required this.commentCountText});

  final String clockText;
  final String commentCountText;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset(AppAssets.clockVector),
        4.horizontalSpace,
        SizedBox(
          width: 73,
          child: Text(
            clockText,
            style: AppTextStyles.greyScale400s12W400,
          ),
        ),
        SvgPicture.asset(
          height: 16.h,
          width: 16.w,
          AppAssets.messageCircle,
          colorFilter: const ColorFilter.mode(
            AppColors.greyScale_400,
            BlendMode.srcIn,
          ),
        ),
        4.horizontalSpace,
        Text(
          commentCountText,
          style: AppTextStyles.greyScale400s12W400,
        ),
      ],
    );
  }
}
