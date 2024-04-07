import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_texts.dart';
import 'notifications_box.dart';

class NotificationsBoxes extends StatelessWidget {
  const NotificationsBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const NotificationsBox(
          title: AppTexts.emailfromNewsup,
          subTitle: AppTexts.weekly,
        ),
        16.verticalSpace,
        const NotificationsBox(
          title: AppTexts.recomendedReading,
          subTitle: AppTexts.daily,
        ),
        16.verticalSpace,
        const NotificationsBox(
          title: AppTexts.emailsfromWriters,
          subTitle: AppTexts.off,
          hasSwitch: true,
        ),
        16.verticalSpace,
        const NotificationsBox(
          title: AppTexts.emailsfromPublications,
          subTitle: AppTexts.off,
          hasSwitch: true,
        ),
      ],
    );
  }
}
