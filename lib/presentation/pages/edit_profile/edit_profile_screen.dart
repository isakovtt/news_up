import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/presentation/pages/edit_profile/widgets/edit_profile_app_bar.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import '../../../utils/constants/app_texts.dart';
import '../authorization_screens/widgets/sign_in_up_button.dart';
import 'widgets/edit_profile_inputs.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EditProfileAppBar(),
      body: Padding(
        padding: AppPaddings.h24,
        child: ListView(
          children: [
            32.verticalSpace,
            SvgPicture.asset(
              AppAssets.editProfileAvatar,
            ),
            40.verticalSpace,
            Column(
              children: [
                const EditProfileInputs(),
                30.verticalSpace,
                const SignInUpButton(text: AppTexts.save)
              ],
            )
          ],
        ),
      ),
    );
  }
}
