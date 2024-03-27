import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      scrolledUnderElevation: 0,
      leading: Padding(
        padding: AppPaddings.l24,
        child: Center(
          child: SvgPicture.asset(
            AppAssets.arrowNarrowLeft,
            height: 32.h,
            width: 32.w,
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
          child: SvgPicture.asset(
            AppAssets.search,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
