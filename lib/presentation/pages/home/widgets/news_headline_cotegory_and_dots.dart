import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../utils/constants/app_assets.dart';
import '../../../../../utils/constants/app_text_styles.dart';

class NewsHeadlineCotegoryAndDots extends StatelessWidget {
  const NewsHeadlineCotegoryAndDots({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 200.w,
          child: Text(
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            text,
            style: AppTextStyles.primaryBaseS12W500,
          ),
        ),
        21.horizontalSpace,
        SvgPicture.asset(
          AppAssets.dotsVerticalGrey,
        ),
      ],
    );
  }
}
