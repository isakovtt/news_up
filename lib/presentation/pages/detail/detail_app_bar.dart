import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';

class DetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(scrolledUnderElevation: 0,
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
      actions: [
        SvgPicture.asset(AppAssets.frame),
        16.horizontalSpace,
        Padding(
          padding: AppPaddings.r16,
          child: SvgPicture.asset(AppAssets.share),
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
