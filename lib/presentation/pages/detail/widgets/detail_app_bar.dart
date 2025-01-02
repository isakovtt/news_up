import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../home/home_screen.dart';

class DetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DetailAppBar({super.key});


 final String shareContent = 'newsup.com/watch?v=e40WRDnKXjQ';
  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      leading: Padding(
        padding: AppPaddings.l24,
        child: Center(
          child: GestureDetector(
            onTap: () => Navigate.navigatePop(
              context,
              const HomeScreen(),
            ),
            child: SvgPicture.asset(
              AppAssets.arrowNarrowLeft,
              height: 32.h,
              width: 32.w,
            ),
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
          //  HomeSheet.globalSheet(context);
          },
        child: SvgPicture.asset(AppAssets.frame)),
        16.horizontalSpace,
        Padding(
          padding: AppPaddings.r16,
          child: GestureDetector(onTap: () {
           Share.share(shareContent);
          } ,
            child: SvgPicture.asset(AppAssets.share)),
        ),
      ],
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(4.0),
        child: Divider(
          thickness: 3,
          color: AppColors.primary_100,
          height: 0,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
