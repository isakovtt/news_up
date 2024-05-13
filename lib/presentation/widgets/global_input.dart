import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_text_styles.dart';

class GlobalInput extends StatelessWidget {
  const GlobalInput({
    super.key,
    this.hintText,
    this.controller,
    this.prefixIcon,
    this.inputBorderColor,
    this.suffixIcon,
    this.obscureText,
    this.prefixText,
    this.suffixText,
    this.borderRadius,
    this.validator,
    this.onSaved,
    this.prefix,
    this.helperText,
    this.keyboardType,
    this.inputFormatters,
    this.initialValue,
  });

  final String? hintText;
  final String? helperText;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? inputBorderColor;
  final Color focusedColor = AppColors.primaryBase;
  final bool? obscureText;
  final String? initialValue;
  final Widget? prefix;
  final String? prefixText;
  final String? suffixText;
  final double? borderRadius;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: validator,
      initialValue: initialValue,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      obscureText: obscureText ?? false,
      controller: controller,
      style: AppTextStyles.greyScale900s14W500,
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primaryBase,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.greyScale_50,
          ),
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
        ),
        hintStyle: AppTextStyles.greyScale400s14W400,
        fillColor: AppColors.greyScale_50,
        filled: true,
        helperText: helperText,
        errorStyle: const TextStyle(height: 0),
        prefixIcon: prefixIcon,
        suffixText: suffixText,
        suffixIcon: suffixIcon,
        focusColor: AppColors.primaryBase,
        prefixText: prefixText,
        prefix: prefix,
        counterStyle: const TextStyle(color: AppColors.primaryBase),
      ),
    );
  }
}
