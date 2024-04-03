import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/app_text_styles.dart';

class ListTileCotegoryName extends StatelessWidget {
  const ListTileCotegoryName({
    super.key,
    required this.text,
    this.style,
  });

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.w,
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: style ?? AppTextStyles.primaryBaseS12W500,
      ),
    );
  }
}
