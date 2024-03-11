import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';

import '../../../utils/constants/app_assets.dart';
import '../../../utils/constants/app_text_styles.dart';
import '../../../utils/constants/app_texts.dart';
import 'widgets/onboard_app_bar.dart';
import 'widgets/onboard_get_started_button.dart';
import 'widgets/onboard_login_button.dart';

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
          32.verticalSpace,
          Padding(
            padding: AppPaddings.h24,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: AppTexts.findAndRelay,
                style: AppTextStyles.primaryBaseS24W700,
                children: <TextSpan>[
                  TextSpan(
                    text: AppTexts.onboardFirstTitle,
                    style: AppTextStyles.greyScale900s24W700,
                  ),
                ],
              ),
            ),
          ),
          12.verticalSpace,
          Padding(
            padding: AppPaddings.h24,
            child: Text(
              textAlign: TextAlign.center,
              AppTexts.onboardFirstDescription,
              style: AppTextStyles.greyScale400s14W400,
            ),
          ),
          40.verticalSpace,
          Padding(
            padding: AppPaddings.h22,
            child: Row(
              children: [
                const OnboardLoginButton(),
                12.horizontalSpace,
                const OnboardGetStartedButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
