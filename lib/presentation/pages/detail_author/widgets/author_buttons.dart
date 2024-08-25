import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../widgets/inside_colored_button.dart';
import '../../../widgets/inner_colorless_button.dart';

class AuthorButtons extends StatefulWidget {
  const AuthorButtons({super.key});

  @override
  State<AuthorButtons> createState() => _AuthorButtonsState();
}

class _AuthorButtonsState extends State<AuthorButtons> {
  bool isPressed = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InnerColorlessButton(
            text: AppTexts.message,
            height: 48.h,
            width: 159.w,
          ),
          8.horizontalSpace,
          GestureDetector(
            onTap: () {
              setState(
                () {
                  isPressed = !isPressed;
                },
              );
            },
            child: InsideColoredButton(
              height: 48.h,
              width: 159.w,
              border: Border.all(color: AppColors.greyScale_900),
              buttonColor:
                  isPressed ? AppColors.greyScale_900 : AppColors.white,
              text: isPressed ? AppTexts.follow : AppTexts.following,
              textColor: isPressed ? AppColors.white : AppColors.greyScale_900,
            ),
          )
        ],
      ),
    );
  }
}
