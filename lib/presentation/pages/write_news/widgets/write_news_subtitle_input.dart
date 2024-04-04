import 'package:flutter/material.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';

class WriteNewsSubtitleInput extends StatelessWidget {
  const WriteNewsSubtitleInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: TextFormField(
        style: AppTextStyles.greyScale500s14W500,
        decoration: InputDecoration.collapsed(
          hintText: 'Tap here to continue...',
          hintStyle: AppTextStyles.greyScale300s14W400,
        ),
      ),
    );
  }
}
