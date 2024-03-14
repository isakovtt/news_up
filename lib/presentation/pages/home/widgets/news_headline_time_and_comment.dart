import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';

class NewsHeadlineTimeAndComment extends StatelessWidget {
  const NewsHeadlineTimeAndComment(
      {super.key, required this.clockText, required this.commentCountText});

  final String clockText;
  final String commentCountText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppAssets.clock),
        4.horizontalSpace,
        SizedBox(
          child: Text(
            clockText,
            style: AppTextStyles.greyScale400s12W400,
          ),
        ),
        16.horizontalSpace,
        SvgPicture.asset(AppAssets.messageCircleGrey),
        4.horizontalSpace,
        Text(
          commentCountText,
          style: AppTextStyles.greyScale400s12W400,
        ),
      ],
    );
  }
}
