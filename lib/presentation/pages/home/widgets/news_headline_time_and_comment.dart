import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../../widgets/news_source_icon_and_name.dart';
import '../../comments/comments_screen.dart';

class NewsHeadlineTimeAndComment extends StatelessWidget {
  const NewsHeadlineTimeAndComment(
      {super.key,
      required this.clockText,
      required this.commentCountText,
      required this.sourceIcon,
      required this.sourceName});

  final String clockText;
  final String sourceIcon;
  final String sourceName;
  final String commentCountText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NewsSourceIconAndName(
          sourceIcon: sourceIcon,
          sourceName: sourceName,
        ),
        SvgPicture.asset(AppAssets.clockVector),
        4.horizontalSpace,
        SizedBox(
          width: 70.w,
          child: Text(
            clockText,
            style: AppTextStyles.greyScale400s12W400,
          ),
        ),
        GestureDetector(
          onTap: () => Navigate.navigatePush(context, const CommentsScreen()),
          child: SvgPicture.asset(
            height: 16.h,
            width: 16.w,
            AppAssets.messageCircle,
            colorFilter: const ColorFilter.mode(
              AppColors.greyScale_400,
              BlendMode.srcIn,
            ),
          ),
        ),
        Text(
          commentCountText,
          style: AppTextStyles.greyScale400s12W400,
        ),
      ],
    );
  }
}
