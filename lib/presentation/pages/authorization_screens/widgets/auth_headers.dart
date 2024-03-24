import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_text_styles.dart';

class AuthHeaders extends StatelessWidget {
  const AuthHeaders(
      {super.key,
      required this.title,
      required this.subtitle,
      this.crossAxisAlignment,
      this.mainAxisAlignment});

  final String title;
  final String subtitle;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisAlignment? mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.greyScale900s24W700,
        ),
        8.verticalSpace,
        Text(
          subtitle,
          style: AppTextStyles.greyScale400s14W400,
          maxLines: 2,
        ),
      ],
    );
  }
}
