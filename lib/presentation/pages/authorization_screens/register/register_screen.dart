import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../identification/identify_type_screen/identify_type_screen.dart';
import '../login/login_screen.dart';
import 'widgets/register_greeting_text.dart';
import 'widgets/register_inputs.dart';
import '../widgets/have_account_button.dart';
import '../widgets/sign_in_up_button.dart';
import '../widgets/sign_in_up_with_button.dart';
import '../widgets/sign_in_with_button.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';

import '../../../../utils/constants/app_texts.dart';
import '../../../../utils/helpers/navigate.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            AppTexts.getStarted,
            style: AppTextStyles.greyScale900s16W700,
          ),
        ),
        body: Padding(
          padding: AppPaddings.h24,
          child: Column(
            children: [
              const RegisterGreetingText(),
              40.verticalSpace,
              const RegisterInputs(),
              24.verticalSpace,
              const SignInUpWithButton(
                text: AppTexts.orSignUpWith,
              ),
              24.verticalSpace,
              const SignInWithButton(),
              32.verticalSpace,
              SignInUpButton(
                text: AppTexts.signUp,
                onTap: () {
                  Navigate.navigateReplacePush(
                      context, const IdentifyTypeScreen());
                },
              ),
              110.verticalSpace,
              HaveAccountButton(
                  text: AppTexts.alreadyHaveAnAccount,
                  title: AppTexts.signIn,
                  onTap: () {
                    Navigate.navigateReplacePush(context, const LoginScreen());
                  })
            ],
          ),
        ));
  }
}
