import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';

class NewsHeadlineText extends StatelessWidget {
  const NewsHeadlineText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.h,
      width: 231.w,
      child: Text(
        text,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: AppTextStyles.greyScale900s14W700,
      ),
    );
  }
}
