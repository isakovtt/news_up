import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';
import '../../../../utils/constants/app_text_styles.dart';

class GlobalAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GlobalAppBar({super.key, required this.text, this.onTap});
  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Center(
        child: GestureDetector(
          onTap: onTap,
          child: SvgPicture.asset(
            AppAssets.arrowNarrowLeft,
            height: 32.h,
          ),
        ),
      ),
      automaticallyImplyLeading: false,
      leadingWidth: 62.w,
      centerTitle: true,
      title: Text(
        text,
        style: AppTextStyles.greyScale900s16W700,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 30);
}
