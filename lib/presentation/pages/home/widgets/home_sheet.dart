import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_box_decorations.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../widgets/global_sheet_item.dart';
import '../../../widgets/inner_colorless_button.dart';
import '../../../widgets/inside_colored_button.dart';

class HomeSheet {
  HomeSheet._();

  static void globalSheet(BuildContext ctx) {
    showModalBottomSheet(
      useSafeArea: true,
      context: ctx,
      builder: (context) {
        return Container(
          height: 340.h,
          decoration: AppBoxDecorations.whiteCircularLR24,
          width: double.infinity,
          padding: AppPaddings.all24,
          child: Column(
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    AppAssets.indicatorVector,
                  ),
                  15.verticalSpace,
                  Text(
                    'Your lists',
                    style: AppTextStyles.greyScale900s16W700,
                  ),
                ],
              ),
              20.verticalSpace,
              const GlobalSheetItem(text: 'My list'),
              20.verticalSpace,
              const GlobalSheetItem(text: 'Design'),
              20.verticalSpace,
              const GlobalSheetItem(
                text: 'Productivity',
              ),
              20.verticalSpace,
              const GlobalSheetItem(text: 'Interesting'),
              20.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const InnerColorlessButton(
                    height: 50,
                    text: 'Create',
                  ),
                  12.horizontalSpace,
                  const InsideColoredButton(
                    height: 50,
                    text: 'Add',
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
