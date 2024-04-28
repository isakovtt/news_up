import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../cubits/login/login_cubit.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../bottom_navigation/navigation_screen.dart';
import '../register/register_screen.dart';
import '../widgets/have_account_button.dart';
import '../widgets/sign_in_up_button.dart';
import '../widgets/sign_in_up_with_button.dart';
import '../widgets/sign_in_with_button.dart';
import 'widgets/forgot_password_button.dart';
import 'widgets/login_greeting_text.dart';
import 'widgets/login_inputs.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    return Scaffold(
      body: Padding(
        padding: AppPaddings.h24,
        child: ListView(
          children: [
            24.verticalSpace,
            const LoginGreetingText(),
            40.verticalSpace,
            const LoginInputs(),
            24.verticalSpace,
            const ForgotPasswordButton(),
            24.verticalSpace,
            const SignInUpWithButton(text: AppTexts.orSignInWith),
            24.verticalSpace,
            const SignInWithButton(),
            32.verticalSpace,
            BlocConsumer<LoginCubit, LoginState>(
              listener: (context, state) {
                if (state is LoginSuccess) {
                  Navigate.navigateReplacePush(
                    context,
                    const NavigationScreen(),
                  );
                }
              },
              builder: (context, state) {
                return SignInUpButton(
                  text: AppTexts.signIn,
                  onTap: () => cubit.validateLogin,
                );
              },
            ),
            64.verticalSpace,
            HaveAccountButton(
              text: AppTexts.dontHaveAnAccount,
              title: AppTexts.signUp,
              onTap: () {
                Navigate.navigatePush(
                  context,
                  const RegisterScreen(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
