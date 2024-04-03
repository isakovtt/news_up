import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/widgets/custom_tab_box.dart';
import 'package:newsup_app/utils/constants/app_box_decorations.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/constants/app_texts.dart';

class ListPageSegmentedBar extends StatelessWidget {
  const ListPageSegmentedBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: AppBoxDecorations.greyScale100R12,
      child: Padding(
        padding: AppPaddings.all1,
        child: ButtonsTabBar(
          height: 40.h,
          radius: 12,
          contentPadding: AppPaddings.h6,
          backgroundColor: AppColors.white,
          unselectedBackgroundColor: AppColors.greyScale_100,
          splashColor: AppColors.white,
          tabs: const [
            Tab(
              child: CustomTabBox(
                width: 101,
                text: AppTexts.saved,
              ),
            ),
            Tab(
              child: CustomTabBox(
                width: 101,
                text: AppTexts.recent,
              ),
            ),
            Tab(
              child: CustomTabBox(
                width: 101,
                text: AppTexts.highlight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
