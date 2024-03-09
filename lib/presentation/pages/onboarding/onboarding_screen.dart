import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/app_assets.dart';
import 'widgets/onboard_app_bar.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const OnboardAppBar(),
      body: Column(
        children: [
          14.verticalSpace,
          Image.asset(
            AppAssets.onboardList,
            width: 632.w,
            height: 200.h,
            fit: BoxFit.fitWidth,
          ),
          16.verticalSpace,
          Image.asset(
            AppAssets.onboardList_2,
            width: 632.w,
            height: 200.h,
            fit: BoxFit.fitWidth,
          ),
          
        ],
      ),
    );
  }
}
