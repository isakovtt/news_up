import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../notification/notification_screen.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: 24,
      scrolledUnderElevation: 0,
      title: SvgPicture.asset(
        AppAssets.component_4,
        height: 32.h,
      ),
      actions: [
        Padding(
          padding: AppPaddings.h24,
          child: Stack(
            children: [
              GestureDetector(
                onTap: () => Navigate.navigatePush(
                  context,
                  const NotificationScreen(),
                ),
                child: SvgPicture.asset(
                  AppAssets.bell,
                  height: 24.h,
                  width: 24.w,
                  colorFilter: const ColorFilter.mode(
                    AppColors.greyScale_400,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              const Positioned(
                  left: 13,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: AppColors.errorBase,
                  ))
            ],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
