import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../utils/constants/app_box_decorations.dart';
import '../../../../../utils/constants/app_text_styles.dart';

class NewsHeadlineChannelSource extends StatelessWidget {
  const NewsHeadlineChannelSource(
      {super.key, required this.icon, required this.text});

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20.r,
          height: 20.r,
          child: DecoratedBox(
            decoration: AppBoxDecorations.greyScale100R1000,
            child: Center(
              child: SvgPicture.asset(
                width: 11.67.w,
                icon,
              ),
            ),
          ),
        ),
        4.horizontalSpace,
        Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.greyScale400s12W400,
        ),
      ],
    );
  }
}
