import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants/app_box_decorations.dart';
import '../../utils/constants/app_text_styles.dart';

class NewsSourceIconAndName extends StatelessWidget {
  const NewsSourceIconAndName(
      {super.key,
      required this.sourceIcon,
      required this.sourceName,
      this.style,
      this.width});

  final String sourceIcon;
  final String sourceName;
  final TextStyle? style;
  final double? width;

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
                sourceIcon,
                width: 11.67.w,
              ),
            ),
          ),
        ),
        4.horizontalSpace,
        SizedBox(
          width: width ?? 90.w,
          child: Text(
            sourceName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: style ?? AppTextStyles.greyScale400s12W400,
          ),
        ),
      ],
    );
  }
}
