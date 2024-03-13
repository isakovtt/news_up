import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';


class SignInUpWithButton extends StatelessWidget {
  const SignInUpWithButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(thickness: 2, color: AppColors.greyScale_200),
        ),
        Padding(
          padding: AppPaddings.h12,
          child: Text(
            text,
            style: AppTextStyles.greyScale400s14W400,
          ),
        ),
        const Expanded(
          child: Divider(thickness: 2, color: AppColors.greyScale_200),
        ),
      ],
    );
  }
}
