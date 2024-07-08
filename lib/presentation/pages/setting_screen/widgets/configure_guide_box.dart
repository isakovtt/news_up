import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/customize_interest/customize_interest_screen.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../email_notification/email_notification_screen.dart';
import 'guide_box.dart';

class ConfigureGuideBox extends StatelessWidget {
  const ConfigureGuideBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            60.verticalSpace,
            Image.asset(
              AppAssets.configureSetting,
            ),
            8.horizontalSpace,
            Text(
              AppTexts.configure,
              style: AppTextStyles.greyScale900s14W700,
            )
          ],
        ),
        12.verticalSpace,
        GestureDetector(
          child: const GuideBox(text: AppTexts.interest),
          onTap: () {
            Navigate.navigatePush(context, const CustomizeInterestScreen());
          },
        ),
        8.verticalSpace,
        const GuideBox(text: AppTexts.notifications),
        8.verticalSpace,
        GestureDetector(
          child: const GuideBox(text: AppTexts.emailNotifications),
          onTap: () {
            Navigate.navigatePush(context, const EmailNotificationScreen());
          },
        ),
        8.verticalSpace,
        GestureDetector(
          onTap: () {},
          child: const GuideBox(
            text: AppTexts.darkMode,
            hasSwitch: true,
          ),
        ),
      ],
    );
  }
}
