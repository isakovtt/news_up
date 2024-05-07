import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/app_assets.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/app_texts.dart';
import '../../../utils/helpers/navigate.dart';
import '../authorization_screens/widgets/sign_in_up_button.dart';
import '../bottom_navigation/navigation_screen.dart';
import 'widgets/edit_profile_inputs.dart';
import 'widgets/global_app_bar.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBar(
        text: AppTexts.editProfile,
        onTap: () => Navigate.navigatePop(
          context,
          const NavigationScreen(),
        ),
      ),
      body: Padding(
        padding: AppPaddings.h24,
        child: ListView(
          children: [
            SvgPicture.asset(
              AppAssets.editProfileAvatar,
            ),
            32.verticalSpace,
            Column(
              children: [
                const EditProfileInputs(),
                30.verticalSpace,
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: AppPaddings.h24,
        child: const SignInUpButton(
          text: AppTexts.save,
          height: 60,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
