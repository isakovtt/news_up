import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

import '../../utils/constants/app_assets.dart';
import '../../utils/constants/app_color_filters.dart';
import '../../utils/constants/app_text_styles.dart';
import '../../utils/helpers/navigate.dart';
import '../pages/comments/comments_screen.dart';
import 'news_source_icon_and_name.dart';

class TimeAndComment extends StatelessWidget {
  const TimeAndComment(
      {super.key,
      required this.clockText,
      required this.commentCountText,
      this.sourceIcon,
      this.sourceName,
      this.hasSource = false,
      this.hasDot = false});

  final String clockText;
  final String? sourceIcon;
  final String? sourceName;
  final String commentCountText;
  final bool hasSource;
  final bool hasDot;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (hasSource == true)
          NewsSourceIconAndName(
            sourceIcon: sourceIcon!,
            sourceName: sourceName!,
          ),
        SvgPicture.asset(AppAssets.clockVector),
        4.horizontalSpace,
        Text(
          clockText,
          style: AppTextStyles.greyScale400s12W400,
        ),
        8.horizontalSpace,
        if (hasDot == true)
          const CircleAvatar(
            radius: 3,
            backgroundColor: AppColors.greyScale_300,
          ),
        8.horizontalSpace,
        GestureDetector(
          onTap: () => Navigate.navigatePush(
            context,
            const CommentsScreen(),
          ),
          child: SvgPicture.asset(
            height: 16.h,
            width: 16.w,
            AppAssets.messageCircle,
            colorFilter: AppColorFilters.greyScale400SrcIn,
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
