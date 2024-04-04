import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/presentation/pages/profile/profile_screen.dart';
import 'package:newsup_app/presentation/widgets/global_divider.dart';
import '../../setting_screen/setting_screen.dart';
import '../../../../utils/helpers/navigate.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';

class WriteNewsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WriteNewsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      scrolledUnderElevation: 0,
      leadingWidth: 76.w,
      leading: Center(
        child: GestureDetector(
          onTap: () => Navigate.navigatePop(
            context,
            const ProfileScreen(),
          ),
          child: SvgPicture.asset(
            AppAssets.arrowNarrowLeft,
            height: 32.h,
            width: 32.w,
          ),
        ),
      ),
      title: Text(
        AppTexts.writeNews,
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
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(1.h),
        child: const GlobalDivider(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
