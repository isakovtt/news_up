import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';

class OnboardSecondScreen extends StatelessWidget {
  const OnboardSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          34.verticalSpace,
          Image.asset(
            AppAssets.onboardPicture_3,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          ),
          84.verticalSpace,
          Padding(
            padding: AppPaddings.h24,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: AppTexts.exploreAndShare,
                style: AppTextStyles.primaryBaseS24W700,
                children: <TextSpan>[
                  TextSpan(
                    text: AppTexts.onboardSecondTitle,
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
              AppTexts.onboardSecondDescription,
              style: AppTextStyles.greyScale400s14W400,
            ),
          ),
        ],
      ),
    );
  }
}
