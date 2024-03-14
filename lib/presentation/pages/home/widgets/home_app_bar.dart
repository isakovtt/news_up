import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_paddings.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        24.verticalSpace,
        Padding(
          padding: AppPaddings.h24,
          child: SizedBox(
            height: 56,
            child: Center(
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppAssets.component_4,
                    height: 32.h,
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    AppAssets.bell,
                    height: 24.h,
                    width: 24.w,
                    colorFilter: const ColorFilter.mode(
                      AppColors.greyScale_400,
                      BlendMode.srcIn,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
