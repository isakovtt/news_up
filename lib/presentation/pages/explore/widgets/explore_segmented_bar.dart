import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_box_decorations.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../widgets/custom_tab_box.dart';
import 'explore_tabbar_view.dart';

class ExploreSegmentedBar extends StatelessWidget {
  const ExploreSegmentedBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        8.verticalSpace,
        DecoratedBox(
          decoration: AppBoxDecorations.greyScale100R12,
          child: Padding(
            padding: AppPaddings.all3,
            child: ButtonsTabBar(
              height: 40.h,
              contentPadding: AppPaddings.h4,
              backgroundColor: AppColors.white,
              unselectedBackgroundColor: AppColors.greyScale_100,
              tabs: const [
                Tab(
                  child: CustomTabBox(
                    width: 101,
                    text: AppTexts.stories,
                  ),
                ),
                Tab(
                  child: CustomTabBox(
                    width: 101,
                    text: AppTexts.topics,
                  ),
                ),
                Tab(
                  child: CustomTabBox(
                    width: 101,
                    text: AppTexts.author,
                  ),
                ),
              ],
            ),
          ),
        ),
        24.verticalSpace,
        const ExploreTabbarView(),
      ],
    );
  }
}
