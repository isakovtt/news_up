import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_box_decorations.dart';
import '../../utils/constants/app_text_styles.dart';

class CustomTabBox extends StatelessWidget {
  const CustomTabBox({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        height: 32.h,
        width: 155,
        decoration: AppBoxDecorations.circular12,
        child: Center(
          child: Text(
            text,
            style: AppTextStyles.greyScale900s14W700,
          ),
        ),
      ),
    );
  }
}
