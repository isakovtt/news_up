import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../comments/comments_screen.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_box_decorations.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/helpers/navigate.dart';

class NewsHeadlineTimeAndComment extends StatelessWidget {
  const NewsHeadlineTimeAndComment(
      {super.key,
      required this.clockText,
      required this.commentCountText,
      required this.icon,
      required this.text});

  final String clockText;
  final String icon;
  final String text;
  final String commentCountText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20.w,
          height: 20.h,
          child: DecoratedBox(
            decoration: AppBoxDecorations.greyScale100R1000,
            child: Center(
              child: SvgPicture.asset(
                icon,
                width: 11.67.w,
              ),
            ),
          ),
        ),
        4.horizontalSpace,
        SizedBox(
          width: 90.w,
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.greyScale400s12W400,
          ),
        ),
        SvgPicture.asset(AppAssets.clockVector),
        4.horizontalSpace,
        SizedBox(
          width: 73.w,
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
