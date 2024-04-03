import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/widgets/inner_colorless_button.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../widgets/inside_colored_button.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InnerColorlessButton(
            text: AppTexts.editProfile,
            height: 48.h,
            width: 159.w,
          ),
          8.horizontalSpace,
          InsideColoredButton(
            height: 48.h,
            width: 159.w,
            color: AppColors.primaryBase,
            text: AppTexts.addStory,
          )
        ],
      ),
    );
  }
}
