import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/constants/app_text_styles.dart';

class FaqTypeDescriptions extends StatelessWidget {
  const FaqTypeDescriptions({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppTextStyles.greyScale500s12W400,
        ),
        12.verticalSpace,
        Text(
          subTitle,
          style: AppTextStyles.greyScale500s12W400,
        ),
      ],
    );
  }
}
