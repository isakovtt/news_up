import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/constants/app_assets.dart';

class OnboardBannerTwo extends StatelessWidget {
  const OnboardBannerTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.onboardPicture_1,
      width: 632.w,
      height: 200.h,
      fit: BoxFit.fitWidth,
      filterQuality: FilterQuality.high,
    );
  }
}
