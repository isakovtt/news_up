import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../widgets/global_button.dart';

class SignInWithButton extends StatelessWidget {
  const SignInWithButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GlobalButton(
          border: Border.all(color: AppColors.greyScale_200),
          child: Padding(
            padding: AppPaddings.v17,
            child: Center(
              child: Row(
                children: [
                  23.horizontalSpace,
                  SvgPicture.asset(
                    AppAssets.googleIcon,
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
                    AppAssets.appleIcon,
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
