import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';
import 'package:newsup_app/utils/constants/app_texts.dart';

class GlobalCommentInput extends StatelessWidget {
  const GlobalCommentInput(
      {super.key, this.height, this.hintText, this.suffixIcon});

  final double? height;
  final String? hintText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.lr24b12t13,
      child: SizedBox(
        height: height ?? 40.h,
        child: TextFormField(
          style: AppTextStyles.greyScale900s14W700,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: AppColors.greyScale_50,
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(1000),
              ),
            ),
            hintText: hintText ?? AppTexts.writeComment,
            hintStyle: AppTextStyles.greyScale400s12W400,
          ),
        ),
      ),
    );
  }
}
