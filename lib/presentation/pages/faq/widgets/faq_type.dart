import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_paddings.dart';
import 'faq_type_descriptions.dart';
import 'faq_type_name.dart';

class FaqType extends StatelessWidget {
  const FaqType(
      {super.key,
      required this.text,
      required this.title,
      required this.subTitle});
  final String text;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h16,
      child: Column(
        children: [
          FaqTypeName(title: text),
          16.verticalSpace,
           FaqTypeDescriptions(
            title: title,
            subTitle: subTitle,
          ),
        ],
      ),
    );
  }
}
