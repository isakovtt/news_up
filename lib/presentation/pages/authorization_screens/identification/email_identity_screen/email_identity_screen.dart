import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../cubits/email_verify/email_verify_cubit.dart';
import '../../../../../utils/constants/app_paddings.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../../../../utils/helpers/navigate.dart';
import '../../../../widgets/global_input.dart';
import '../../../bottom_navigation/navigation_screen.dart';
import '../../widgets/auth_headers.dart';
import '../../widgets/sign_in_up_button.dart';

class EmailIdentityScreen extends StatelessWidget {
  const EmailIdentityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<EmailVerifyCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: AppPaddings.h24,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            24.verticalSpace,
            const AuthHeaders(
                title: AppTexts.whatsYourEmail,
                subtitle: AppTexts.sendVerifyCodeEmailSubtitle),
            32.verticalSpace,
            GlobalInput(
              controller: cubit.emailController,
              text: AppTexts.email,
            ),
            const Spacer(),
            BlocConsumer<EmailVerifyCubit, EmailVerifyState>(
              listener: (context, state) {
                if (state is EmailVerifySucces) {
                  Navigate.navigateReplacePush(
                    context,
                    const NavigationScreen(),
                  );
                }
              },
              builder: (context, state) {
                return SignInUpButton(
                  text: AppTexts.continuee,
                  onTap: () {
                    cubit.getEmailVerify();
                  },
                );
              },
            ),
            32.verticalSpace,
          ],
        ),
      ),
    );
  }
}
