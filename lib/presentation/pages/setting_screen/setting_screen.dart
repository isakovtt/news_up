import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_texts.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTexts.setting,
          style: AppTextStyles.greyScale900s14W700,
        ),
      ),
      body: Padding(
        padding: AppPaddings.h24,
        child: ListView(
          children: [
            const Divider(
              height: 1,
              color: AppColors.greyScale_100,
            ),
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
            // Row()
          ],
        ),
      ),
    );
  }
}
