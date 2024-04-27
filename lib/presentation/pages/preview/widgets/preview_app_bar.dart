import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../setting_screen/setting_screen.dart';
import '../../write_news/write_news_screen.dart';

class PreviewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PreviewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      scrolledUnderElevation: 0,
      leadingWidth: 76.w,
      leading: Center(
        child: GestureDetector(
          onTap: () {
            Hive.box('writeNews').clear();

            Navigate.navigatePop(
              context,
              const WriteNewsScreen(),
            );
          },
          child: SvgPicture.asset(
            AppAssets.arrowNarrowLeft,
            height: 32.h,
            width: 32.w,
          ),
        ),
      ),
      title: Text(
        AppTexts.preview,
        style: AppTextStyles.greyScale900s16W700,
      ),
      actions: [
        Padding(
          padding: AppPaddings.h24,
          child: GestureDetector(
            onTap: () => Navigate.navigatePush(
              context,
              const SettingScreen(),
            ),
            child: SvgPicture.asset(
              AppAssets.dotsVertical,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
