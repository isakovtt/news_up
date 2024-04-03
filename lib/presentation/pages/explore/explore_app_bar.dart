import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/presentation/pages/explore/explore_screen.dart';
import 'package:newsup_app/presentation/pages/explore/topic/topic_screen.dart';
import 'package:newsup_app/utils/helpers/navigate.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';

class ExploreAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ExploreAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      scrolledUnderElevation: 0,
      leading: Padding(
        padding: AppPaddings.l24,
        child: Center(
          child: GestureDetector(
            onTap: () => Navigate.navigatePop(
              context,
              const ExploreScreen(),
            ),
            child: SvgPicture.asset(
              AppAssets.arrowNarrowLeft,
              height: 32.h,
              width: 32.w,
            ),
          ),
        ),
      ),
      title: Text(
        AppTexts.explore,
        style: AppTextStyles.greyScale900s16W700,
      ),
      actions: [
        Padding(
          padding: AppPaddings.h24,
          child: GestureDetector(
            onTap: () => Navigate.navigatePush(
              context,
              const TopicScreen(),
            ),
            child: SvgPicture.asset(
              AppAssets.search,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
