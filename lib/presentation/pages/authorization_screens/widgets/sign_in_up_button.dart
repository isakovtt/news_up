import 'package:flutter/material.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../widgets/global_button.dart';

class SignInUpButton extends StatelessWidget {
  const SignInUpButton({super.key, required this.text, this.onTap});

  final void Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: GlobalButton(
        color: AppColors.greyScale_900,
        child: Center(
          child: Padding(
            padding: AppPaddings.v17,
            child: Text(
              text,
              style: AppTextStyles.whiteS14W700,
            ),
          ),
        ),
      ),
    );
  }
}
