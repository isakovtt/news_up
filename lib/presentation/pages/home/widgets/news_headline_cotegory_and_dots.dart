import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_text_styles.dart';

class NewsHeadlineCotegory extends StatelessWidget {
  const NewsHeadlineCotegory({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.w,
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: AppTextStyles.primaryBaseS12W500,
      ),
    );
  }
}
