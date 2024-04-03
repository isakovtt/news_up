import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_text_styles.dart';

class ListTileTitle extends StatelessWidget {
  const ListTileTitle({super.key, required this.text, this.titleStyle});

  final String text;
  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 44.h,
      width: 231.w,
      child: Text(
        text,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: titleStyle ?? AppTextStyles.greyScale900s14W700,
      ),
    );
  }
}
