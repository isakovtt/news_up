import 'package:flutter/material.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../widgets/global_button.dart';

class SignInUpButton extends StatelessWidget {
  const SignInUpButton({
    super.key,
    required this.text,
    this.onTap, this.height,
  });

  final void Function()? onTap;
  final String text;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: GlobalButton(height: height,
        color: AppColors.greyScale_900,
        child: Center(
          child: Padding(
            padding: AppPaddings.v20,
            child: Text(
              text,
              style: AppTextStyles.greyScale900s14W700
                  .copyWith(color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
