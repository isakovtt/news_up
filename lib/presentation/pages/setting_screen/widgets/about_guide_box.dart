import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/faq/faq_screen.dart';
import 'package:newsup_app/utils/helpers/navigate.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';
import 'guide_box.dart';

class AboutGuideBox extends StatelessWidget {
  const AboutGuideBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            60.verticalSpace,
            Image.asset(
              AppAssets.aboutSetting,
            ),
            8.horizontalSpace,
            Text(
              AppTexts.about,
              style: AppTextStyles.greyScale900s14W700,
            )
          ],
        ),
        12.verticalSpace,
        GestureDetector(
          child: const GuideBox(text: AppTexts.getHelp),
          onTap: () {
            Navigate.navigatePush(context, const FaqScreen());
          },
        ),
        8.verticalSpace,
        const GuideBox(text: AppTexts.termofService),
        8.verticalSpace,
        const GuideBox(text: AppTexts.privacyPolicy),
      ],
    );
  }
}
