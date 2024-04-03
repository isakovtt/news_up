import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_paddings.dart';
import '../../utils/constants/app_text_styles.dart';
import 'inner_colorless_button.dart';
import 'inside_colored_button.dart';

class GlobalSheet {
  GlobalSheet._();

  static void globalSheet(BuildContext ctx) {
    showModalBottomSheet(
      useSafeArea: true,
      context: ctx,
      builder: (context) {
        return Container(
          height: 340.h,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
            color: AppColors.white,
          ),
          width: double.infinity,
          padding: AppPaddings.all24,
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    'Sort by',
                    style: AppTextStyles.greyScale900s16W700,
                  ),
                ],
              ),
              22.verticalSpace,
              Row(
                children: [
                  Text(
                    'Recently Added',
                    style: AppTextStyles.greyScale900s16W500,
                  )
                ],
              ),
              22.verticalSpace,
              Row(
                children: [
                  Text(
                    'Recently Published',
                    style: AppTextStyles.greyScale900s16W500,
                  ),
                ],
              ),
              22.verticalSpace,
              Row(
                children: [
                  Text(
                    'Shortest Reading Time',
                    style: AppTextStyles.greyScale900s16W500,
                  ),
                ],
              ),
              35.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InnerColorlessButton(),
                  12.horizontalSpace,
                  InsideColoredButton(),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
