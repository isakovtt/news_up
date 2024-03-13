import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';

class OnboardBanner extends StatelessWidget {
  const OnboardBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppAssets.onboardPicture_1,
          width: 632.w,
          height: 200.h,
          fit: BoxFit.fitWidth,
          filterQuality: FilterQuality.high,
        ),
        16.verticalSpace,
        Image.asset(
          AppAssets.onboardPicture_2,
          width: 632.w,
          height: 200.h,
          fit: BoxFit.fitWidth,
          filterQuality: FilterQuality.high,
        ),
      ],
    );
  }
}
