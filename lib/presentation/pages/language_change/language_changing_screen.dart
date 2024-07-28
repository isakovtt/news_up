import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/authorization_screens/widgets/sign_in_up_button.dart';
import 'package:newsup_app/presentation/pages/edit_profile/widgets/global_app_bar.dart';
import 'package:newsup_app/presentation/pages/language_change/widgets/language_boxes.dart';
import 'package:newsup_app/presentation/pages/setting_screen/setting_screen.dart';
import 'package:newsup_app/presentation/widgets/global_input.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/helpers/navigate.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_texts.dart';

class LanguageChangingScreen extends StatelessWidget {
  const LanguageChangingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBar(
        onTap: () {
          Navigate.navigateReplacePush(context, const SettingScreen());
        },
        text: AppTexts.selectLanguage,
      ),
      body: Padding(
        padding: AppPaddings.h24,
        child: ListView(
          children: [
            const GlobalInput(
              prefixIcon: Icon(
                Icons.search_outlined,
                color: AppColors.greyScale_300,
              ),
              hintText: AppTexts.searchLanguage,
            ),
            const LanguageBoxes(),
            48.verticalSpace,
            const SignInUpButton(text: AppTexts.select)
          ],
        ),
      ),
    );
  }
}
