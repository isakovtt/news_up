import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../setting_screen/setting_screen.dart';

class AuthorAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AuthorAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      leadingWidth: 76.w,
      leading: Center(
        child: SvgPicture.asset(
          AppAssets.arrowNarrowLeft,
          height: 32.h,
          width: 32.w,
        ),
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
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
