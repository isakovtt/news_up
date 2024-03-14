import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/reset_password_screen.dart';
import '../widgets/auth_headers.dart';
import '../widgets/sign_in_up_button.dart';
import '../../../widgets/global_input.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/helpers/navigate.dart';

import '../../../../utils/constants/app_texts.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
              24.verticalSpace,
              const AuthHeaders(
                title: AppTexts.forgotPassword,
                subtitle: AppTexts.forgotPasswordSubtitle,
              ),
              32.verticalSpace,
              const GlobalInput(
                text: AppTexts.email,
              ),
              138.verticalSpace,
              SignInUpButton(
                text: AppTexts.continuee,
                onTap: () {
                  Navigate.navigateReplacePush(
                      context, const ResetPasswordScreen());
                },
              ),
            ],
          ),
        ));
  }
}
