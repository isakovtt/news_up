import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_paddings.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../../../widgets/global_input.dart';
import '../../widgets/auth_headers.dart';
import '../../widgets/sign_in_up_button.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: AppPaddings.h24,
        child: Column(
          children: [
            const AuthHeaders(
              title: AppTexts.resetPassword,
              subtitle: AppTexts.resetPasswordSubtitle,
            ),
            32.verticalSpace,
            const GlobalInput(
              text: AppTexts.oldPassword,
              suffixIcon: Icon(
                Icons.remove_red_eye_outlined,
                color: AppColors.greyScale_500,
              ),
            ),
            24.verticalSpace,
            const GlobalInput(
              text: AppTexts.newPassword,
              suffixIcon: Icon(
                Icons.remove_red_eye_outlined,
                color: AppColors.greyScale_500,
              ),
            ),
            315.verticalSpace,
            const SignInUpButton(text: AppTexts.createNewPassword)
          ],
        ),
      ),
    );
  }
}
