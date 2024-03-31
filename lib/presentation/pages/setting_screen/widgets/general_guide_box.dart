import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';
import 'guide_box.dart';

class GeneralGuideBox extends StatelessWidget {
  const GeneralGuideBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            60.verticalSpace,
            Image.asset(
              AppAssets.generalSettingPng,
            ),
            8.horizontalSpace,
            Text(
              AppTexts.general,
              style: AppTextStyles.greyScale900s14W700,
            )
          ],
        ),
        12.verticalSpace,
        const GuideBox(text: AppTexts.myAccount),
        8.verticalSpace,
        const GuideBox(text: AppTexts.statistic),
        8.verticalSpace,
        const GuideBox(text: AppTexts.language),
      ],
    );
  }
}
