import 'package:flutter/material.dart';
import 'package:newsup_app/presentation/pages/setting_screen/widgets/about_guide_box.dart';
import 'package:newsup_app/presentation/pages/setting_screen/widgets/configure_guide_box.dart';
import 'package:newsup_app/presentation/pages/setting_screen/widgets/general_guide_box.dart';
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
          children: const [
            Divider(
              height: 1,
              color: AppColors.greyScale_100,
            ),
            GeneralGuideBox(),
            ConfigureGuideBox(),
            AboutGuideBox()

          ],
        ),
      ),
    );
  }
}
