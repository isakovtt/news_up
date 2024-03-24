import 'package:flutter/material.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_text_styles.dart';

class GlobalInput extends StatelessWidget {
  const GlobalInput({
    super.key,
    this.text,
    this.controller,
    this.prefixIcon,
    this.inputBorderColor,
    this.suffixIcon,
    this.obscureText,
    this.prefixText,
  });

  final String? text;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? inputBorderColor;
  final Color focusedColor = AppColors.primaryBase;
  final bool? obscureText;
  final String? prefixText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      controller: controller,
      style: AppTextStyles.greyScale900s14W500,
      decoration: InputDecoration(
        hintText: text,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primaryBase,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.greyScale_50,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        hintStyle: AppTextStyles.greyScale400s14W400,
        fillColor: AppColors.greyScale_50,
        filled: true,
        errorStyle: const TextStyle(height: 0),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        focusColor: AppColors.primaryBase,
        prefixText: prefixText,
        counterStyle: const TextStyle(color: AppColors.primaryBase),
      ),
    );
  }
}
