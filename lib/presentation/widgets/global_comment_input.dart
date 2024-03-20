import 'package:flutter/material.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';
import 'package:newsup_app/utils/constants/app_texts.dart';

class GlobalCommentInput extends StatelessWidget {
  const GlobalCommentInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.lr24b12t13,
      child: SizedBox(
        height: 40,
        child: TextFormField(
          style: AppTextStyles.greyScale900s14W700,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.greyScale_50,
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(1000),
              ),
            ),
            hintText: AppTexts.writeComment,
            hintStyle: AppTextStyles.greyScale400s12W400,
          ),
        ),
      ),
    );
  }
}
