import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../cubits/google_auth/google_auth_cubit.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../../widgets/global_button.dart';
import '../../bottom_navigation/navigation_screen.dart';

class SignInWithButton extends StatelessWidget {
  const SignInWithButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<GoogleAuthCubit>();
    return Column(
      children: [
        GlobalButton(
          onTap: () async {
            cubit.signInWithGoogle();
            await Future.delayed(
              const Duration(seconds: 5),
              () {
                Navigate.navigateReplacePush(
                  context,
                  const NavigationScreen(),
                );
              },
            );
          },
          border: Border.all(color: AppColors.greyScale_200),
          child: Padding(
            padding: AppPaddings.v17,
            child: Center(
              child: Row(
                children: [
                  23.horizontalSpace,
                  SvgPicture.asset(
                    AppAssets.flatColorIconsGoogle,
                  ),
                  60.horizontalSpace,
                  Text(
                    AppTexts.signInWithGoogle,
                    style: AppTextStyles.greyScale900s14W500,
                  ),
                ],
              ),
            ),
          ),
        ),
        16.verticalSpace,
        GlobalButton(
          border: Border.all(color: AppColors.greyScale_200),
          child: Padding(
            padding: AppPaddings.v17,
            child: Center(
              child: Row(
                children: [
                  23.horizontalSpace,
                  SvgPicture.asset(
                    AppAssets.antDesignAppleFilled,
                  ),
                  60.horizontalSpace,
                  Text(
                    AppTexts.signInWithGoogle,
                    style: AppTextStyles.greyScale900s14W500,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
