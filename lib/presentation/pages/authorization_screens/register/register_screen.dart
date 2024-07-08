import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/cubits/login/login_cubit.dart';
import 'package:newsup_app/presentation/widgets/global_progress_indicator.dart';

import '../../../../cubits/register/register_cubit.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../../utils/helpers/navigate.dart';
import '../identification/identify_type_screen/identify_type_screen.dart';
import '../login/login_screen.dart';
import '../widgets/have_account_button.dart';
import '../widgets/sign_in_up_button.dart';
import '../widgets/sign_in_up_with_button.dart';
import '../widgets/sign_in_with_button.dart';
import 'widgets/register_greeting_text.dart';
import 'widgets/register_inputs.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            AppTexts.getStarted,
            style: AppTextStyles.greyScale900s16W700,
          ),
        ),
        body: Padding(
          padding: AppPaddings.h24,
          child: ListView(
            children: [
              const RegisterGreetingText(),
              40.verticalSpace,
              const RegisterInputs(),
              24.verticalSpace,
              const SignInUpWithButton(text: AppTexts.orSignUpWith),
              24.verticalSpace,
              const SignInWithButton(),
              32.verticalSpace,
              BlocConsumer<RegisterCubit, RegisterState>(
                listener: (context, state) {
                  if (state is RegisterSuccess) {
                    Navigate.navigateReplacePush(
                      context,
                      const IdentifyTypeScreen(),
                    );
                  }
                },
                builder: (context, state) {
                  if (state is RegisterLoading) {
                    return const GlobalProgressIndicator();
                  } else {
                    return SignInUpButton(
                      text: AppTexts.signUp,
                      onTap: () {
                        cubit.validateRegister;
                      },
                    );
                  }
                },
              ),
              64.verticalSpace,
              HaveAccountButton(
                text: AppTexts.alreadyHaveAnAccount,
                title: AppTexts.signIn,
                onTap: () {
                  Navigate.navigateReplacePush(
                    context,
                    BlocProvider(
                      create: (context) => LoginCubit(),
                      child: const LoginScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
