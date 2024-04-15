import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_text_styles.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../../../../utils/helpers/navigate.dart';
import '../../password_restore/forgot_password_screen.dart';

class ForgotPasswordButton extends StatefulWidget {
  const ForgotPasswordButton({super.key});

  @override
  State<ForgotPasswordButton> createState() => _ForgotPasswordButtonState();
}

class _ForgotPasswordButtonState extends State<ForgotPasswordButton> {
  bool isRememberCheked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            isRememberCheked = !isRememberCheked;
            setState(() {});
          },
          child: Row(
            children: [
              Icon(
                isRememberCheked ? Icons.check_circle : Icons.circle_outlined,
                size: 24,
                color: isRememberCheked
                    ? AppColors.primaryBase
                    : AppColors.greyScale_200,
              ),
              8.horizontalSpace,
              Text(
                AppTexts.rememberMe,
                style: AppTextStyles.greyScale900s14W500,
              ),
            ],
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Navigate.navigatePush(
              context,
              const ForgotPasswordScreen(),
            );
          },
          child: Text(
            AppTexts.forgotPassword,
            style: AppTextStyles.primaryBaseS14W700,
          ),
        )
      ],
    );
  }
}
