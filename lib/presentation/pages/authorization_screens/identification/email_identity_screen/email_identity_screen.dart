import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../cubits/email_verify/email_verify_cubit.dart';
import '../../../../../cubits/register/register_cubit.dart';
import '../../../../../utils/constants/app_assets.dart';
import '../../../../../utils/constants/app_paddings.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../../../../utils/helpers/navigate.dart';
import '../../../../widgets/global_input.dart';
import '../../../bottom_navigation/navigation_screen.dart';
import '../../widgets/auth_headers.dart';
import '../../widgets/sign_in_up_button.dart';
import '../identify_type_screen/identify_type_screen.dart';

class EmailIdentityScreen extends StatefulWidget {
  const EmailIdentityScreen({super.key});

  @override
  State<EmailIdentityScreen> createState() => _EmailIdentityScreenState();
}

class _EmailIdentityScreenState extends State<EmailIdentityScreen> {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SendEmailVerifyCubit>();
    final registerCubit = context.read<RegisterCubit>();
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: GestureDetector(
            onTap: () {
              Navigate.navigateReplacePush(
                context,
                const IdentifyTypeScreen(),
              );
            },
            child: SvgPicture.asset(
              AppAssets.arrowNarrowLeft,
              height: 32.h,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
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
              controller: registerCubit.emailController,
              hintText: AppTexts.email,
            ),
            const Spacer(),
            BlocConsumer<SendEmailVerifyCubit, SendEmailVerifyState>(
              listener: (context, state) {
                // if (FirebaseAuth.instance.currentUser!.emailVerified == true) {
                //   Navigate.navigateReplacePush(context, const NavigationScreen());
                // }

                // if (FirebaseAuth.instance.currentUser!.emailVerified == false) {
                //   ScaffoldMessenger.of(context).showSnackBar(
                //     const SnackBar(
                //       content: Text('Please Email Verified'),
                //     ),
                //   );
                // }

                if (state is SendEmailVerifySucces) {
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
