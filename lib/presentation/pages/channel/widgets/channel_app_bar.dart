import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/presentation/pages/bottom_navigation/navigation_screen.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';
import 'package:newsup_app/utils/helpers/navigate.dart';

class ChannelAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChannelAppBar({super.key, required this.channelName});
  final String channelName;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        channelName,
        style: AppTextStyles.greyScale900s16W700,
      ),
      centerTitle: true,
      automaticallyImplyLeading: false,
      leadingWidth: 62,
      leading: Center(
        child: GestureDetector(
          onTap: () {
            Navigate.navigatePop(
              context,
              const NavigationScreen(),
            );
          },
          child: SvgPicture.asset(
            AppAssets.arrowNarrowLeft,
            height: 32.h,
            width: 32.w,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
