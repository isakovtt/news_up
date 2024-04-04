import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';

class WriteNewsTitleInput extends StatelessWidget {
  const WriteNewsTitleInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: TextFormField(
        style: AppTextStyles.greyScale900s20W700,
        cursorHeight: 32.h,
        autocorrect: false,
        decoration: InputDecoration.collapsed(
          hintText: 'Title goes here',
          hintStyle: AppTextStyles.greyScale300s20W700,
        ),
      ),
    );
  }
}
