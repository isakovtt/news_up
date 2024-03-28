import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants/app_assets.dart';
import '../../utils/constants/app_text_styles.dart';

class NewsCotegoryAndSharedTime extends StatelessWidget {
  const NewsCotegoryAndSharedTime({
    super.key,
    required this.cotegoryText,
    required this.sharedTimeText,
  });

  final String cotegoryText;
  final String sharedTimeText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          cotegoryText,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: AppTextStyles.primaryBaseS12W500,
        ),
        const Spacer(),
        SvgPicture.asset(AppAssets.clockVector),
        4.horizontalSpace,
        Text(
          sharedTimeText,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: AppTextStyles.greyScale400s12W400,
        ),
      ],
    );
  }
}
